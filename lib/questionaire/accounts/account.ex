defmodule Questionaire.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :account_number, :string
    field :balance, :string
    field :currency, :string
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:user_id, :balance, :currency, :account_number])
    |> validate_required([:user_id, :balance, :currency, :account_number])
  end
end
