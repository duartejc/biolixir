defmodule SUBS do

  def find_motif([], _, acc), do: acc
  def find_motif(string, motif, acc) do
    index = :string.str(string, motif)
    if index == 0 do
      find_motif(tl(string), motif, acc)
    else
      last = Integer.parse(List.last(string))
      IO.puts last
      acc = acc ++ [index+last]
      str = String.slice(to_string(string), index, String.length(to_string(string)))
      find_motif(to_char_list(str), motif, acc)
    end
  end
end
