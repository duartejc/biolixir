defmodule FIBD do

  def wabbit_season(months, life_expc) do
    result = wabbit_season_calc(months, 0, 1, life_expc)
    List.flatten([result]) |> Enum.sum
  end

  defp wabbit_season_calc(0, _acc1, _acc2, _), do: 0
  defp wabbit_season_calc(1, _acc1, acc2, _), do: acc2
  defp wabbit_season_calc(n, acc1, acc2, m) when n <= m, do: wabbit_season_calc(n-1, acc2, acc2 + acc1, m)
  defp wabbit_season_calc(n, acc1, acc2, m) do
    for x <- n-m..(n-2) do
      wabbit_season_calc(x, acc1, acc2, m)
    end
  end
end
