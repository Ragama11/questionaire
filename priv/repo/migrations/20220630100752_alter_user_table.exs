defmodule Questionaire.Repo.Migrations.AlterUserTable do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :password, :string, virtual: true
      remove :password
    end
  end
end
