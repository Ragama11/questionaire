defmodule Questionaire.Repo.Migrations.AlterQuizTable do
  use Ecto.Migration

  def change do
    alter table(:quizes) do
      remove :user_id
    end
  end
end
