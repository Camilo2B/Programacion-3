# Videojuego

defmodule PuntosVideojuego do

	def main do
	Util.show_message("Verificando puntos al vencer el boss")
	jugador = pedir_nombre()
	nivel = pedir_nivel()
	verificar_nivel(jugador,nivel)
	end

	def pedir_nombre() do
		jugador = Util.input("Ingresa tu nombre jugador: ", :string)
		IO.puts("Su nombre es #{jugador}")
    jugador
	end

	def pedir_nivel() do
		nivel = Util.input("Ingresa el nivel del boss derrotado: ", :integer)
		IO.puts("El nivel del boss derrotado es de #{nivel}")
		nivel
	end

	def verificar_nivel(jugador, nivel) do
		puntos = cond do
		nivel < 3 -> "+10"
		nivel >= 3 && nivel <= "+20"
		nivel > 6 -> nivel = "+30"
		true -> "No se registro"
		end
		Util.show_message("#{jugador} los puntos que gano fueron #{puntos}")
	end

	end

	PuntosVideojuego.main()
