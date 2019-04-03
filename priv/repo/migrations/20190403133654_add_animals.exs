defmodule PostgresSyncCopy.Repo.Migrations.AddAnimals do
  use Ecto.Migration

  def change do
    create table(:animals, primary_key: false) do
      add(:species, :string)
      add(:name, :string)
      add(:chip_id, :string)
    end
  end
end
