defmodule Questionaire.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :answer, :string
    field :question, :string
    belongs_to :quiz_id, Questionaire.Quizes.Quiz
    field :status, :string

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:quiz_id, :question, :answer, :status])
    |> validate_required([:quiz_id, :question, :answer, :status])
  end
end
