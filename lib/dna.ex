defmodule DNA do

  def count_nucleotides(col) do
    count = Enum.reduce col, %{}, fn(letter, acc) ->
      Map.update(acc, Utils.to_string(letter), 1, &(&1 + 1))
    end
    "#{count["A"]} #{count["C"]} #{count["G"]} #{count["T"]}"
  end
end
