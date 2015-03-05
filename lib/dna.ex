defmodule DNA do

  def count_nucleotides(string) do
    Enum.reduce string, %{}, fn(letter, acc) ->
      Map.update(acc, Utils.to_string(letter), 1, &(&1 + 1))
    end
  end
end
