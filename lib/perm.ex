defmodule PERM do

  def permute(n) do
    list = Enum.to_list 1..n
    permutations = permutations(list)
    write_result permutations
  end

  defp permutations([]), do: [[]]
  defp permutations(list) do
    for h <- list, t <- permutations(list -- [h]), do: [h | t]
  end

  defp write_result(perm) do
    {:ok, file} = File.open "result", [:write]
    IO.write(file, length(perm))
    Enum.map(perm, fn(res) ->
       to_print = Enum.join(res, " ") <> "\n"
       IO.binwrite file, to_print
      end)
    File.close file
  end
end
