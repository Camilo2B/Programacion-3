defmodule Util do
  def show_message(message) do
    message
    |> IO.puts()
  end


  def input(message, :string) do
    message
    |> IO.gets()
    |> String.trim()
  end

  def input(message, :integer) do
    #se diferencian según el patrón el metodo se llama igual pero el patrón los diferencia
    message
    |> input(:string)
    |> String.to_integer()
  end

    def input(message, :float) do
    message
    |> input(:string)
    |> String.to_float()
  end
end
