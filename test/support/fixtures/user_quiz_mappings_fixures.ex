defmodule Questionaire.UserQuizMappingsFixtures do
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
      |> Questionaire.UserQuizMappings.create_user_quiz_mapping()

    user_quiz_mapping
  end
end
