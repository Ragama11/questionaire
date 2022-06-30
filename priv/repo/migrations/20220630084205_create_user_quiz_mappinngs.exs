defmodule Questionaire.Repo.Migrations.CreateUserQuizMappings do
  use Ecto.Migration

  def change do
    create table(:user_quiz_mappings) do
      add :quiz_id, references (:quizes)
      add :user_id, references (:users)

      timestamps()
    end
  end
end
