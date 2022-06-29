defmodule Questionaire.QuestionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Questionaire.Accounts` context.
  """

  @doc """
  Generate a question.
  """
  def question_fixture(attrs \\ %{}) do
    {:ok, question} =
      attrs
      |> Enum.into(%{
        answer: "some answer",
        question: "some question",
        quiz_id: 42,
        status: "some status"
      })
      |> Questionaire.Questions.create_question()

    question
  end
end
