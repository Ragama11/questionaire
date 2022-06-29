defmodule Questionaire.AccountsTest do
  use Questionaire.DataCase

  alias Questionaire.Questions

  describe "questions" do
    alias Questionaire.Questions.Question

    import Questionaire.Questions

    @invalid_attrs %{answer: nil, question: nil, quiz_id: nil, status: nil}

    test "list_questions/0 returns all questions" do
      question = question_fixture()
      assert Questions.list_questions() == [question]
    end

    test "get_question!/1 returns the question with given id" do
      question = question_fixture()
      assert Questions.get_question!(question.id) == question
    end

    test "create_question/1 with valid data creates a question" do
      valid_attrs = %{answer: "some answer", question: "some question", quiz_id: 42, status: "some status"}

      assert {:ok, %Question{} = question} = Questions.create_question(valid_attrs)
      assert question.answer == "some answer"
      assert question.question == "some question"
      assert question.quiz_id == 42
      assert question.status == "some status"
    end

    test "create_question/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Questions.create_question(@invalid_attrs)
    end

    test "update_question/2 with valid data updates the question" do
      question = question_fixture()
      update_attrs = %{answer: "some updated answer", question: "some updated question", quiz_id: 43, status: "some updated status"}

      assert {:ok, %Question{} = question} = Questions.update_question(question, update_attrs)
      assert question.answer == "some updated answer"
      assert question.question == "some updated question"
      assert question.quiz_id == 43
      assert question.status == "some updated status"
    end

    test "update_question/2 with invalid data returns error changeset" do
      question = question_fixture()
      assert {:error, %Ecto.Changeset{}} = Questions.update_question(question, @invalid_attrs)
      assert question == Questions.get_question!(question.id)
    end

    test "delete_question/1 deletes the question" do
      question = question_fixture()
      assert {:ok, %Question{}} = Questions.delete_question(question)
      assert_raise Ecto.NoResultsError, fn -> Questions.get_question!(question.id) end
    end

    test "change_question/1 returns a question changeset" do
      question = question_fixture()
      assert %Ecto.Changeset{} = Questions.change_question(question)
    end
  end
end
