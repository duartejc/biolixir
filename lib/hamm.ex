defmodule HAMM do

  def count_point_mutation(s, t) do
    Enum.zip(String.to_char_list(s), String.to_char_list(t))
    |> Enum.filter(fn({x, y}) -> x != y end)
    |> Enum.count
  end

end
