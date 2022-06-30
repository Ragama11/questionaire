defmodule Questionaire.Accounts.User_quiz_mapping do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_quiz_mappings" do
    field :quiz_id, :integer
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(user_quiz_mapping, attrs) do
    user_quiz_mapping
    |> cast(attrs, [:quiz_id, :user_id])
    |> validate_required([:quiz_id, :user_id])
  end
end
