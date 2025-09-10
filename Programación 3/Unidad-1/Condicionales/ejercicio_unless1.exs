# Contraseña "1234"

defmodule EjercicioUnless1 do
  def main do
    Util.show_message("Verificación contraseña")
    nombre = pedir_nombre()
    contraseña = pedir_contraseña()
    verificar_contraseña(nombre, contraseña)
  end

  def pedir_nombre() do
    nombre = Util.input("Ingresa tu nombre", :string)
    IO.puts("Tu nombre es: #{nombre}")
    nombre
  end

  def pedir_contraseña() do
    contraseña = Util.input("Ingresa la contraseña", :integer)
    IO.puts("Contraseña ingresada: #{contraseña}")
    contraseña
  end

  def verificar_contraseña(nombre, contraseña) do
    unless contraseña == 1234 do
      Util.show_message("Contraseña incorrecta, #{nombre}")
    else
      Util.show_message("Contraseña correcta, #{nombre}")
    end
  end
end

EjercicioUnless1.main()
