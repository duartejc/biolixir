defmodule RNA do

  def transcribe(input) do
    String.replace(input, "T", "U")
  end
end
