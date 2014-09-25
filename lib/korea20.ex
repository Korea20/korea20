defmodule Korea20 do
  use Application
  require MicroMacro.Sup
  import MicroMacro.Sup

  defsup Root, link: [name: __MODULE__] do
    children = [
      Korea20.Plug.Root |> worker([]),
    ]
    supervise(children, strategy: :one_for_one)
  end

  def start(_type, _args) do
    Korea20.Root.start_link()
  end
end
