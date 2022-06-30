defmodule Questionaire.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias Questionaire.Repo

  alias Questionaire.Accounts.Account

  @doc """
  Returns the list of accounts.

  ## Examples

      iex> list_accounts()
      [%Account{}, ...]

  """
  def list_accounts do
    Repo.all(Account)
  end

  @doc """
  Gets a single account.

  Raises `Ecto.NoResultsError` if the Account does not exist.

  ## Examples

      iex> get_account!(123)
      %Account{}

      iex> get_account!(456)
      ** (Ecto.NoResultsError)

  """
  def get_account!(id), do: Repo.get!(Account, id)

  @doc """
  Creates a account.

  ## Examples

      iex> create_account(%{field: value})
      {:ok, %Account{}}

      iex> create_account(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_account(attrs \\ %{}) do
    %Account{}
    |> Account.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a account.

  ## Examples

      iex> update_account(account, %{field: new_value})
      {:ok, %Account{}}

      iex> update_account(account, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_account(%Account{} = account, attrs) do
    account
    |> Account.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a account.

  ## Examples

      iex> delete_account(account)
      {:ok, %Account{}}

      iex> delete_account(account)
      {:error, %Ecto.Changeset{}}

  """
  def delete_account(%Account{} = account) do
    Repo.delete(account)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking account changes.

  ## Examples

      iex> change_account(account)
      %Ecto.Changeset{data: %Account{}}

  """
  def change_account(%Account{} = account, attrs \\ %{}) do
    Account.changeset(account, attrs)
  end

  alias Questionaire.Accounts.User_quiz_mapping

  @doc """
  Returns the list of user_quiz_mappinngs.

  ## Examples

      iex> list_user_quiz_mappinngs()
      [%User_quiz_mapping{}, ...]

  """
  def list_user_quiz_mappinngs do
    Repo.all(User_quiz_mapping)
  end

  @doc """
  Gets a single user_quiz_mapping.

  Raises `Ecto.NoResultsError` if the User quiz mapping does not exist.

  ## Examples

      iex> get_user_quiz_mapping!(123)
      %User_quiz_mapping{}

      iex> get_user_quiz_mapping!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user_quiz_mapping!(id), do: Repo.get!(User_quiz_mapping, id)

  @doc """
  Creates a user_quiz_mapping.

  ## Examples

      iex> create_user_quiz_mapping(%{field: value})
      {:ok, %User_quiz_mapping{}}

      iex> create_user_quiz_mapping(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user_quiz_mapping(attrs \\ %{}) do
    %User_quiz_mapping{}
    |> User_quiz_mapping.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user_quiz_mapping.

  ## Examples

      iex> update_user_quiz_mapping(user_quiz_mapping, %{field: new_value})
      {:ok, %User_quiz_mapping{}}

      iex> update_user_quiz_mapping(user_quiz_mapping, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user_quiz_mapping(%User_quiz_mapping{} = user_quiz_mapping, attrs) do
    user_quiz_mapping
    |> User_quiz_mapping.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user_quiz_mapping.

  ## Examples

      iex> delete_user_quiz_mapping(user_quiz_mapping)
      {:ok, %User_quiz_mapping{}}

      iex> delete_user_quiz_mapping(user_quiz_mapping)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user_quiz_mapping(%User_quiz_mapping{} = user_quiz_mapping) do
    Repo.delete(user_quiz_mapping)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user_quiz_mapping changes.

  ## Examples

      iex> change_user_quiz_mapping(user_quiz_mapping)
      %Ecto.Changeset{data: %User_quiz_mapping{}}

  """
  def change_user_quiz_mapping(%User_quiz_mapping{} = user_quiz_mapping, attrs \\ %{}) do
    User_quiz_mapping.changeset(user_quiz_mapping, attrs)
  end
end
