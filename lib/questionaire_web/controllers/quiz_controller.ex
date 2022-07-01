defmodule QuestionaireWeb.QuizController do
  use QuestionaireWeb, :controller


  alias Questionaire.Quizes.Quiz
  alias Questionaire.Quizes
  QuestionaireWeb.Router.Helpers


  def index(conn, _params) do
    quizes = Quizes.list_quizes()
    render(conn, "index.html", quizes: quizes)
  end

  def new(conn, _params) do
    changeset = Quizes.change_quiz(%Quiz{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"quiz" => quiz_params}) do
    case Quizes.create_quiz(quiz_params) do
      {:ok, quiz} ->
        conn
        |> put_flash(:info, "Quiz created successfully.")
        |> redirect(to: Routes.quiz_path(conn, :show, quiz))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    quiz = Quizes.get_quiz!(id)
    render(conn, "show.html", quiz: quiz)
  end

  def edit(conn, %{"id" => id}) do
    quiz = Quizes.get_quiz!(id)
    changeset = Quizes.change_quiz(quiz)
    render(conn, "edit.html", quiz: quiz, changeset: changeset)
  end

  def update(conn, %{"id" => id, "quiz" => quiz_params}) do
    quiz = Quizes.get_quiz!(id)

    case Quizes.update_quiz(quiz, quiz_params) do
      {:ok, quiz} ->
        conn
        |> put_flash(:info, "Quiz updated successfully.")
        |> redirect(to: Routes.quiz_path(conn, :show, quiz))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", quiz: quiz, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    quiz = Quizes.get_quiz!(id)
    {:ok, _quiz} = Quizes.delete_quiz(quiz)

    conn
    |> put_flash(:info, "Quiz deleted successfully.")
    |> redirect(to: Routes.quiz_path(conn, :index))
  end
end
