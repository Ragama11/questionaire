
defmodule Questionaire.UserQuizMappings do

  import Ecto.Query, warn: false
  alias Questionaire.Repo


  alias Questionaire.UserQuizMappings.User_quiz_mapping

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
