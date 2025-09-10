defmodule Ejercicio1 do

  def main do
    Util.show_message("¡Hola! Vamos a practicar condicionales en Elixir.")
    nombre = pedir_nombre()
    edad = pedir_edad()
    condicion_if(nombre, edad)


  end

  def pedir_nombre do
    nombre = Util.input("Por favor, ingresa tu nombre", :string)
    IO.puts("Tu nombre es: #{nombre}")
    nombre
  end

  def pedir_edad do
    edad = Util.input("Por favor, ingresa tu edad", :integer)
    IO.puts("Tu edad es: #{edad}")
    edad
  end

  def condicion_if(nombre, edad) do
    if edad >= 18 do
      Util.show_message("Señor(a) #{nombre}, Eres mayor de edad.")
    else
      Util.show_message("Señor(a) #{nombre}, Eres menor de edad.")
    end
  end
end

Ejercicio1.main()
