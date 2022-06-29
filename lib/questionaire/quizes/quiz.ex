defmodule Questionaire.Quizes.Quiz do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quizes" do
    field :name, :string
    field :stake, :string
    field :status, :string
    field :subject_id, :integer
    field :user_id, :integer
    field :winnings, :string

    timestamps()
  end

  @doc false
  def changeset(quiz, attrs) do
    quiz
    |> cast(attrs, [:name, :user_id, :subject_id, :stake, :winnings, :status])
    |> validate_required([:name, :user_id, :subject_id, :stake, :winnings, :status])
  end
end
