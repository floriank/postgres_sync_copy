defmodule PostgresSyncCopy.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    applications = [
      supervisor(PostgresSyncCopy.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: PostgresSyncCopy.Supervisor]
    Supervisor.start_link(applications, opts)
  end
end
