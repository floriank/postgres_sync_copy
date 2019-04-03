defmodule Combiner do
  @moduledoc """
  This is the Combiner module from the article, used to illustrate how to combine streams
  """

  alias PostgresSyncCopy.Repo

  @path "/files/animals.csv"
  @copy_sql """
    COPY animals (
      species,
      name,
      chip_id
    ) FROM STDIN (FORMAT csv, HEADER TRUE, DELIMITER '|', NULL '', quote E'\x01')
  """
  def combine do
    file_stream = CSVStreamer.stream(@path)
    sql_stream = SQLStreamer.stream(@copy_sql)

    Repo.transaction(fn ->
      Repo.query("TRUNCATE animals;")
      file_stream |> Enum.into(sql_stream)
    end)
  end
end
