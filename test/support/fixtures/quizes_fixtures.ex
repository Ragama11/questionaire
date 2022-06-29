defmodule Questionaire.QuizesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Questionaire.Accounts` context.
  """

  @doc """
  Generate a quiz.
  """
  def quiz_fixture(attrs \\ %{}) do
    {:ok, quiz} =
      attrs
      |> Enum.into(%{
        name: "some name",
        stake: "some stake",
        status: "some status",
        subject_id: 42,
        user_id: 42,
        winnings: "some winnings"
      })
      |> Questionaire.Quizes.create_quiz()

    quiz
  end
end
