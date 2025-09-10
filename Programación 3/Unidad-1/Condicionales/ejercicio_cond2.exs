# Temperatura Celsius

defmodule Temperatura do
	def main do
		Util.show_message("Temperatura Celsius")
		nombre = pedir_nombre()
		temperatura = pedir_temperatura()
		categorizar_temperatura(nombre, temperatura)
	end

	def pedir_nombre() do
		nombre = Util.input("Ingresa tu nombre: ", :string)
		IO.puts("Tu nombre es #{nombre}")
		nombre
	end

	def pedir_temperatura() do
		temperatura = Util.input("Ingresa la temperatura: ", :float)
		IO.puts("Tu temperatura es #{temperatura}")
		temperatura
	end

	def categorizar_temperatura(nombre, temperatura) do
		categoria = cond do
		temperatura < 15.0 -> "Frio"
		temperatura >= 15.0 && temperatura <= 25.0 -> "Templado"
		temperatura > 25.0 -> "Caluroso"
		true -> "No registrada"
		end
	  Util.show_message("#{nombre} su temperatura es #{categoria}")
	end

end

Temperatura.main()
