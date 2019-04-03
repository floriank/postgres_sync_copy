defmodule CSVStreamer do
  @moduledoc """
  This module is useless and just exists to make a point in the associated article.associated
  """

  @doc """
  This is basically just an alias for File.stream!/1
  """
  def stream(path) do
    path |> File.stream!()
  end
end
