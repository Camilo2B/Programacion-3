# Pedidos domicilio

defmodule PedidosDomicilio do
	def main do
	  Util.show_message("Aplicación pedidos a domicilio")
	  nombre = pedir_nombre()
	  pedido = confirmar_pedido()
	  verificar_pedido(nombre, pedido)
  end

	def pedir_nombre() do
	  nombre = Util.input("Ingrese su nombre:", :string)
	  IO.puts("Su nombre es #{nombre}")
	  nombre
  end

	def confirmar_pedido() do
		pedido = Util.input("¿Tiene pedidos activos?", :string)
		IO.puts(" Usted #{pedido} tiene pedidos activos")
		pedido
  end

	def verificar_pedido(nombre, pedido) do
		unless pedido == "si" do
			Util.show_message("#{nombre} se le asignara un nuevo pedido")
    else
			Util.show_message("#{nombre} no puede tomar un nuevo pedido hasta entregar el actual")
    end
  end
end

PedidosDomicilio.main()
