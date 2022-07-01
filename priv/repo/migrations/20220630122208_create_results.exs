defmodule Questionaire.Repo.Migrations.CreateResults do
  use Ecto.Migration

  def change do
    create table(:results) do
      add :user_quiz_mapping_id, :integer
      add :status, :string

      timestamps()
    end
  end
end
