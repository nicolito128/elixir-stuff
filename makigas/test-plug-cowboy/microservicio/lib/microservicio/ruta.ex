"""
defmodule Microservicio.Ruta do
  # CONN
  # Pieza esencial del mundo de Plug para manejar el endpoint
  import Plug.Conn

  def init(options) do
    IO.inspect(options, label: "init ~>")
    options
  end

  def call(conn, _options) do
    IO.inspect(conn, label: "conn ~>")

    # Peticiones
    # Interacciones con servicios externes
    # Cualquier otra cosa...
    send_resp(conn, 200, "Hello, Plug World\n")
  end
end
"""
