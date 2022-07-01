defmodule Questionaire.Results.Result do
  use Ecto.Schema
  import Ecto.Changeset

  schema "results" do
    field :status, :string
    field :user_quiz_mapping_id, :integer

    timestamps()
  end

  @doc false
  def changeset(result, attrs) do
    result
    |> cast(attrs, [:user_quiz_mapping_id, :status])
    |> validate_required([:user_quiz_mapping_id, :status])
  end
end
