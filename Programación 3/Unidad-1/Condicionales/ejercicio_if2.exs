# Numero si es positivo
defmodule Ejercicio2 do

  def main do
    Util.show_message("¡Hola! Vamo a mirar si tu numero es positivo hijueputa.")
    nombre = pedir_nombre()
    numero = pedir_numero()
    condicion_if(nombre, numero)
  end

  def pedir_nombre do
    nombre = Util.input("Por favor, ingresa tu nombre", :string)
    IO.puts("Tu nombre es: #{nombre}")
    nombre
  end

  def pedir_numero do
    numero = Util.input("Por favor, ingresa tu numero", :integer)
    IO.puts("Tu numero es: #{numero}")
    numero
  end

  def condicion_if(nombre, numero) do
    if numero >= 0 do
      Util.show_message("Señor(a) #{nombre}, Su numero es positivo.")
    else
      Util.show_message("Señor(a) #{nombre}, Su numero es negativo.")
    end
  end
end

Ejercicio2.main()
