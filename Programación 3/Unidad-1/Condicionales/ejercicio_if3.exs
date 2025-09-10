# sistema bancario :v

defmodule Banco do
  def main do
  Util.show_message("¡Hola! Bienvenido al sistema bancario.")
  nombre = pedir_nombre()
  saldo = pedir_saldo()
  verificar_retiro(nombre, saldo)
  end

  def pedir_nombre do
    nombre = Util.input("Por favor, ingresa tu nombre", :string)
    IO.puts("Tu nombre es: #{nombre}")
    nombre
  end

  def pedir_saldo do
    saldo = Util.input("Por favor, ingresa tu saldo actual", :integer)
    IO.puts("Tu saldo es: #{saldo}")
    saldo
  end

  def verificar_retiro(nombre, saldo) do
    retiro = Util.input("¿Cuanta plata quieres retitar?", :integer)
    if saldo >= retiro do
      nuevo_saldo = saldo - retiro
      Util.show_message("Señor(a) #{nombre}, Has retirado #{retiro}. Tu nuevo saldo es #{nuevo_saldo}")
    else
      Util.show_message("Señor(a) #{nombre}, Fondos insuficientes para realizar el retiro de #{retiro}. Tu saldo actual es #{saldo}")
    end
  end
end

Banco.main()
