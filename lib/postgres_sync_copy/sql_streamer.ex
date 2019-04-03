defmodule SQLStreamer do
  @moduledoc """
  The module provides a single stream/1 function that will stream a statement
  through the applications repo
  """

  alias Ecto.Adapters.SQL
  alias PostgresSyncCopy.Repo

  def stream(statement) do
    Repo |> SQL.stream(statement)
  end
end
