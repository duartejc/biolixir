defmodule REVC do

  def reverse(input) do
    Enum.map(input, &reverse_complement/1) |> Enum.reverse
  end

  defp reverse_complement(input) do
    simbols_rev = %{"A" => "T", "T" => "A", "C" => "G", "G" => "C"}
    simbols_rev[Utils.to_string(input)]
  end
end
