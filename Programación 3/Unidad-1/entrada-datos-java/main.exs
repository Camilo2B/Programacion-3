# main.exs

# CÓDIGO PRINCIPAL - Aquí es donde ejecutas tus funciones
IO.puts "=== Probando el módulo Util ==="

# Probar show_message
IO.puts "\n1. Probando show_message:"
Util.show_message("¡Hola desde Elixir hacia Java!")

# Probar input con string
IO.puts "\n2. Probando input con string:"
nombre = Util.input("Ingrese su nombre", :string)
IO.puts "Su nombre es: #{nombre}"

# Probar input con integer
IO.puts "\n3. Probando input con integer:"
edad = Util.input("Ingrese su edad", :integer)
IO.puts "Su edad es: #{edad}"

# Probar input con float
IO.puts "\n4. Probando input con float:"
peso = Util.input("Ingrese su peso en kg", :float)
IO.puts "Su peso es: #{peso}"

IO.puts "\n=== Fin de las pruebas ==="
