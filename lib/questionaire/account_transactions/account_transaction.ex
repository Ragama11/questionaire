defmodule Questionaire.Account_transactions.Account_transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "account_transactions" do
    field :amount, :string
    field :currency, :string
    field :reference_number, :integer
    field :time, :utc_datetime
    field :transaction_type, :string

    timestamps()
  end

  @doc false
  def changeset(account_transaction, attrs) do
    account_transaction
    |> cast(attrs, [:reference_number, :time, :transaction_type, :currency, :amount])
    |> validate_required([:reference_number, :time, :transaction_type, :currency, :amount])
  end
end
