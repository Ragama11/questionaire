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
  Generate a user_quiz_mapping.
  """
  def user_quiz_mapping_fixture(attrs \\ %{}) do
    {:ok, user_quiz_mapping} =
      attrs
      |> Enum.into(%{
        quiz_id: 42,
        user_id: 42
      })
      |> Questionaire.Accounts.create_user_quiz_mapping()

    user_quiz_mapping
  end
end
