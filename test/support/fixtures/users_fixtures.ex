defmodule Questionaire.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Questionaire.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        full_name: "some full_name",
        msisdn: "some msisdn",
        password: "some password"
      })
      |> Questionaire.Users.create_user()

    user
  end

  @doc """
  Generate a subject.
  """
  def subject_fixture(attrs \\ %{}) do
    {:ok, subject} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Questionaire.Subjects.create_subject()

    subject
  end
end
