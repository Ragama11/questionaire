defmodule Questionaire.ResultFixtures do
 
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
      |> Questionaire.Results.create_result()

    result
  end
end
