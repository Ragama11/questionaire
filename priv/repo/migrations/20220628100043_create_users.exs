defmodule Questionaire.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :full_name, :string
      add :email, :string
      add :msisdn, :string
      add :password, :string, virtual: true

      timestamps()
    end
  end
end
