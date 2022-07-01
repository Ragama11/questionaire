defmodule Questionaire.Repo.Migrations.CreateAccountTransactions do
  use Ecto.Migration

  def change do
    create table(:account_transactions) do
      add :reference_number, :integer
      add :time, :utc_datetime
      add :transaction_type, :string
      add :currency, :string
      add :amount, :string

      timestamps()
    end
  end
end
