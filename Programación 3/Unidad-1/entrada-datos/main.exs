defmodule Main do

  def main do
    pedir_texto()
    pedir_edad()
    pedir_peso()
  end

  def pedir_texto() do
    "Ingrese su nombre:"
    |> Util.input(:string)
    |> Util.show_message()
  end


  def pedir_edad() do
    x = Util.input("Ingrese su edad: ", :integer)

    "Su edad es: #{is_integer(x)}" #interpolación
    |> Util.show_message()
  end

  def pedir_peso() do
    x = Util.input("Ingrese su peso: ", :float)

    "Su peso es: #{is_float(x)}" #interpolación
    |> Util.show_message()

  end
end

Main.main()
