defmodule Questionaire.AccountTranctionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Questionaire.Accounts` context.
  """
  @doc """
  Generate a account_transaction.
  """
  def account_transaction_fixture(attrs \\ %{}) do
    {:ok, account_transaction} =
      attrs
      |> Enum.into(%{
        amount: "some amount",
        currency: "some currency",
        reference_number: 42,
        time: ~U[2022-06-30 09:41:00Z],
        transaction_type: "some transaction_type"
      })
      |> Questionaire.AccountTransactions.create_account_transaction()

    account_transaction
  end
end
