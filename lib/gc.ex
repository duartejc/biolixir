defmodule GC do

  def find_highest(string) do
    String.split(string, ~r{>})
    |> tl
    |> Enum.reduce({"", 0}, &compute/2)
  end

  def calculate_gc_content(string) do
      count = DNA.count_nucleotides(String.to_char_list(string))
      sum = Map.values(count) |> Enum.sum
      (count["G"] + count["C"])/sum * 100
  end

  def compute(x, acc) do
    splitted = String.split(x, ~r{\n})
    gc_content = calculate_gc_content(group(tl(splitted)))
    {_, acc_gc_content} = acc
    if gc_content > acc_gc_content do
      {List.first(splitted), gc_content}
    else
      acc
    end
  end

  defp group(list) do
    Enum.reduce(list, "", fn(x, acc) -> acc <> x end)
  end
end
