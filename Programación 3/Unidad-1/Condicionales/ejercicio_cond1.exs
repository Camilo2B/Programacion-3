# Nota 0 a 5

defmodule VerificarNota do
	def main do
	Util.show_message("Verificacion nota")
	nombre = pedir_nombre()
	nota = pedir_nota()
	verificar_nota(nombre, nota)
	end

	def pedir_nombre() do
	nombre = Util.input("Ingrese su nombre: ", :string)
	IO.puts("Su nombre es #{nombre}")
	nombre
	end

	def pedir_nota() do
	nota = Util.input("Ingrese su nota(0 a 5): ", :float)
	IO.puts("Su nota es #{nota}")
	nota
	end

	def verificar_nota(nombre, nota) do
		categoria = cond do
		nota >= 4.5 -> "Excelente"
		nota >= 3.0 && nota <= 4.4 -> "Aprobado"
		nota < 3.0 -> "Reprobado"
		true -> "No registrada"
		end
    Util.show_message("#{nombre} su nota es #{categoria}")
	end
end

VerificarNota.main()
