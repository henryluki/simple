defmodule Simple do
  use Application

  def start(_type, _args) do
    Simple.Supervisor.start_link
  end
end
