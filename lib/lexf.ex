defmodule LEXF do

  def permute([], _), do: [[]]
  def permute(list, n) do
    for h <- list, t <- list, do: [h | t]
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
