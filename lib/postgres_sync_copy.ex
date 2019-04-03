defmodule PostgresSyncCopy do
  @moduledoc """
  Documentation for PostgresSyncCopy.
  """

  @doc """
  execute/0 will just call the example code from the blog post

  If everything is fine, it should just end in :ok

  ## Examples

      iex> PostgresSyncCopy.execute()
      :ok

  """
  def execute do
    Combiner.combine()
    :ok
  end
end
