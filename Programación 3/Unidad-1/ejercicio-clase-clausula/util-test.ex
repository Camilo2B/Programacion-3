defmodule UtilTest do
  def string(message) do
    message
    |> String.trim()
  end

   def input(message, :integer) do
    message
    |> input(:string)
    |> String.to_integer()
  end

  def input(message, :float) do
    message
    |> input(:string)
    |> String.to_float()
  end

  def input(message, type) when type == :integer do
    message
    |> input(:string)
    |> String.to_integer()
  end
end
