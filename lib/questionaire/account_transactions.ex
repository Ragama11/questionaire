defmodule Questionaire.AccountTransactions do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias Questionaire.Repo

  alias Questionaire.Account_transactions.Account_transaction

  @doc """
  Returns the list of account_transactions.

  ## Examples

      iex> list_account_transactions()
      [%Account_transaction{}, ...]

  """
  def list_account_transactions do
    Repo.all(Account_transaction)
  end

  @doc """
  Gets a single account_transaction.

  Raises `Ecto.NoResultsError` if the Account transaction does not exist.

  ## Examples

      iex> get_account_transaction!(123)
      %Account_transaction{}

      iex> get_account_transaction!(456)
      ** (Ecto.NoResultsError)

  """
  def get_account_transaction!(id), do: Repo.get!(Account_transaction, id)

  @doc """
  Creates a account_transaction.

  ## Examples

      iex> create_account_transaction(%{field: value})
      {:ok, %Account_transaction{}}

      iex> create_account_transaction(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_account_transaction(attrs \\ %{}) do
    %Account_transaction{}
    |> Account_transaction.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a account_transaction.

  ## Examples

      iex> update_account_transaction(account_transaction, %{field: new_value})
      {:ok, %Account_transaction{}}

      iex> update_account_transaction(account_transaction, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_account_transaction(%Account_transaction{} = account_transaction, attrs) do
    account_transaction
    |> Account_transaction.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a account_transaction.

  ## Examples

      iex> delete_account_transaction(account_transaction)
      {:ok, %Account_transaction{}}

      iex> delete_account_transaction(account_transaction)
      {:error, %Ecto.Changeset{}}

  """
  def delete_account_transaction(%Account_transaction{} = account_transaction) do
    Repo.delete(account_transaction)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking account_transaction changes.

  ## Examples

      iex> change_account_transaction(account_transaction)
      %Ecto.Changeset{data: %Account_transaction{}}

  """
  def change_account_transaction(%Account_transaction{} = account_transaction, attrs \\ %{}) do
    Account_transaction.changeset(account_transaction, attrs)
  end
end
