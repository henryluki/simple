defmodule Simple.Worker do

  @http_port Application.get_env(:simple, :http_port)

  def start_link do
    Plug.Adapters.Cowboy.http(Simple.Router, [], port: @http_port)
  end

end