defmodule PostgresSyncCopy.Repo do
  use Ecto.Repo, otp_app: :postgres_sync_copy, adapter: Ecto.Adapters.Postgres
end
