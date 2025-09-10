# Verificar si numero es 0

defmodule VerificarNumero do
  def main do
    Util.show_message("Verificando si el número es 0")
      nombre = pedir_nombre()
    numero = pedir_numero()
    verificar_numero(nombre, numero)
  end

  def pedir_nombre() do
    nombre = Util.input("Ingresa tu nombre", :string)
    IO.puts("Tu nombre es: #{nombre}")
    nombre
  end

  def pedir_numero() do
      numero = Util.input("Ingrese un numero: ", :integer)
      IO.puts("numero ingresado: #{numero}")
      numero
  end

  def verificar_numero(nombre, numero) do
      unless numero == 0 do
        Util.show_message("Señor(a) #{nombre} su número no es igual a 0")
      else
        Util.show_message("Señor(a) #{nombre} su número es igual a 0")
      end
  end
end

VerificarNumero.main()
