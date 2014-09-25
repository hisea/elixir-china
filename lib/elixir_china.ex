defmodule ElixirChina do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
  	:ets.new :session, [:named_table, :public, read_concurrency: true]
    ElixirChina.Supervisor.start_link
  end
end
