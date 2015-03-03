defmodule BiolixirTest do
  use ExUnit.Case

  """
    Given: A DNA string s of length at most 1000 nt.
    Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.
  """
  test "counts DNA nucleotides" do
    assert DNA.count_nucleotides(String.to_char_list("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")) == "20 12 17 21"
  end

  """
    Given: A DNA string t having length at most 1000 nt.
    Return: The transcribed RNA string of t.
  """
  test "transcribe DNA string into RNA" do
    assert RNA.transcribe("GATGGAACTTGACTACGTAAATT") == "GAUGGAACUUGACUACGUAAAUU"
  end

  """
    Given: A DNA string s of length at most 1000 bp.
    Return: The reverse complement sc of s.
  """
  test "reverse complement of a DNA" do
    reverse = REVC.reverse(String.to_char_list("AAAACCCGGT")) |> List.to_string
    assert reverse == "ACCGGGTTTT"
  end

  test "read dataset" do
    {:ok, data} = File.read("dna.txt")
    assert is_binary(data)
  end

end
