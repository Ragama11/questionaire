defmodule Questionaire.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :quiz_id, references(:quizes)
      add :question, :string
      add :answer, :string
      add :status, :string

      timestamps()
    end
  end
end
