defmodule Questionaire.Repo.Migrations.CreateQuizes do
  use Ecto.Migration

  def change do
    create table(:quizes) do
      add :name, :string
      add :user_id, references(:users)
      add :subject_id, references(:subjects)
      add :stake, :string
      add :winnings, :string
      add :status, :string

      timestamps()
    end
  end
end
