defmodule FIB do

  def wascally_wabbits(months, litters) do
    wascally_wabbits_calc(months, litters)
  end

  defp wascally_wabbits_calc(0, _),  do: 0
  defp wascally_wabbits_calc(1, k),  do: 1
  defp wascally_wabbits_calc(n, k),  do: (wascally_wabbits_calc(n-2, k) * k) + wascally_wabbits_calc(n-1, k)

end
