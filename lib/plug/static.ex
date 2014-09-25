defmodule Korea20.Plug.Static do
  use Plug.Builder

  plug Plug.Static, at: "/static", from: :korea20
  plug :not_found

  def not_found(conn, _) do
    Plug.Conn.send(conn, 404, "file not found")
  end
end

