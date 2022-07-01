defmodule Questionaire.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Questionaire.Accounts` context.
  """

  @doc """
  Generate a account.
  """
  def account_fixture(attrs \\ %{}) do
    {:ok, account} =
      attrs
      |> Enum.into(%{
        account_number: "some account_number",
        balance: "some balance",
        currency: "some currency",
        user_id: 42
      })
      |> Questionaire.Accounts.create_account()

    account
  end



  @doc """
  Generate a result.
  """
  def result_fixture(attrs \\ %{}) do
    {:ok, result} =
      attrs
      |> Enum.into(%{
        status: "some status",
        user_quiz_mapping_id: 42
      })
      |> Questionaire.Accounts.create_result()

    result
  end
end
