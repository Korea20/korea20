defmodule Korea20.Plug.Root do
  use Plug.Router
  require Logger

  plug :match
  plug :dispatch

  def start_link do
    Logger.debug("Starting cowboy at port 4243!")
    Plug.Adapters.Cowboy.http(__MODULE__, nil, port: 4243)
  end

  get "/static/*_rest" do
    conn
    |> Korea20.Plug.Static.call(Korea20.Plug.Static.init([]))
  end

  match _ do
    Plug.Conn.send_resp(conn, 404, "ЧОЧ")
  end

end
