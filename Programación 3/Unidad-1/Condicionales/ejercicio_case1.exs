# Vocales

defmodule Vocales do
	def main do
	Util.show_message("Verificando si es vocal o constante")
	nombre = pedir_nombre()
	caracter = pedir_caracter()
	verificar_caracter(nombre, caracter)
	end

	def pedir_nombre() do
	nombre = Util.input("ingrese su nombre: ", :string)
	IO.puts("Su nombre es #{nombre}")
	nombre
	end

	def pedir_caracter() do
	caracter = Util.input("Ingrese una letra: ", :string)
	IO.puts("Su letra es #{caracter}")
	caracter
	end

	def verificar_caracter(nombre, caracter) do
	categoria = case caracter do
		"a" -> "Vocal"
		"e" -> "Vocal"
		"i" -> "Vocal"
		"o" -> "Vocal"
		"u" -> "Vocal"
		_ -> "Contaste"
	end
	Util.show_message("#{nombre} la categoria de su carácter es #{categoria}")

	end

end

Vocales.main()
