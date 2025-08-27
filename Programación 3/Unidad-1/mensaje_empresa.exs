defmodule MensajeEmpresa do
  def main() do
    "Ingrese nombre del empleado: "
    |> ingresar_texto()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end
end

MensajeEmpresa.main()
