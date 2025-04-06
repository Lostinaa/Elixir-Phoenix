defmodule Dope do
  use Application
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Dope.Worker.start_link(arg)
      # {Dope.Worker, arg}
]
IO.puts("Starting Dope Application")
opts = [strategy: :one_for_one, name: Dope.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
