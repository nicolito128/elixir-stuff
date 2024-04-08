defmodule HelloHttp.Endpoints do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    conn
    |> send_resp(200, "Hello from plug router")
  end

  get "/hello" do
    conn
    |> put_resp_header("Content-Type", "application/json")
    |> send_resp(200, Jason.encode!(%{"message" => :world_reloaded}))
  end
end
