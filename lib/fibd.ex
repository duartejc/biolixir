defmodule FIBD do

  def wabbit_season(months, life_expc) do
    result = wabbit_season_calc(months, life_expc)
    List.flatten([result]) |> Enum.sum
  end

  defp wabbit_season_calc(0, _), do: 0
  defp wabbit_season_calc(1, _), do: 1
  defp wabbit_season_calc(n, m) when n <= m, do: wabbit_season_calc(n-2, m) + wabbit_season_calc(n-1, m)
  defp wabbit_season_calc(n, m) do
    for x <- n-m..(n-2) do wabbit_season_calc(x, m) end
  end
end
