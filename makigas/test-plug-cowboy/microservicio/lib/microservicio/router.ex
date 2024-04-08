defmodule Microservicio.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    IO.puts("Visitan la raíz")
    send_resp(conn, 200, "Hola mundo")
  end

  get "/hola" do
    IO.puts("Visitan la página hola")
    send_resp(conn, 200, "Hola de nuevo")
  end

  get "/blog/:nombre" do
    IO.puts("Visitan la página de #{nombre}")
    send_resp(conn, 200, "Artículo para #{nombre}")
  end
end
