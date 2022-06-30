defmodule Questionaire.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :user_id, references (:users)
      add :balance, :string
      add :currency, :string
      add :account_number, :string

      timestamps()
    end
  end
end
