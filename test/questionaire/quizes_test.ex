describe "quizes" do
  alias Questionaire.Quizes.Quiz

  import Questionaire.QuizesFixtures

  @invalid_attrs %{name: nil, stake: nil, status: nil, subject_id: nil, user_id: nil, winnings: nil}

  test "list_quizes/0 returns all quizes" do
    quiz = quiz_fixture()
    assert Quizes.list_quizes() == [quiz]
  end

  test "get_quiz!/1 returns the quiz with given id" do
    quiz = quiz_fixture()
    assert Quizes.get_quiz!(quiz.id) == quiz
  end

  test "create_quiz/1 with valid data creates a quiz" do
    valid_attrs = %{name: "some name", stake: "some stake", status: "some status", subject_id: 42, user_id: 42, winnings: "some winnings"}

    assert {:ok, %Quiz{} = quiz} = Quizes.create_quiz(valid_attrs)
    assert quiz.name == "some name"
    assert quiz.stake == "some stake"
    assert quiz.status == "some status"
    assert quiz.subject_id == 42
    assert quiz.user_id == 42
    assert quiz.winnings == "some winnings"
  end

  test "create_quiz/1 with invalid data returns error changeset" do
    assert {:error, %Ecto.Changeset{}} = Quizes.create_quiz(@invalid_attrs)
  end

  test "update_quiz/2 with valid data updates the quiz" do
    quiz = quiz_fixture()
    update_attrs = %{name: "some updated name", stake: "some updated stake", status: "some updated status", subject_id: 43, user_id: 43, winnings: "some updated winnings"}

    assert {:ok, %Quiz{} = quiz} = Quizes.update_quiz(quiz, update_attrs)
    assert quiz.name == "some updated name"
    assert quiz.stake == "some updated stake"
    assert quiz.status == "some updated status"
    assert quiz.subject_id == 43
    assert quiz.user_id == 43
    assert quiz.winnings == "some updated winnings"
  end

  test "update_quiz/2 with invalid data returns error changeset" do
    quiz = quiz_fixture()
    assert {:error, %Ecto.Changeset{}} = Quizes.update_quiz(quiz, @invalid_attrs)
    assert quiz == Quizes.get_quiz!(quiz.id)
  end

  test "delete_quiz/1 deletes the quiz" do
    quiz = quiz_fixture()
    assert {:ok, %Quiz{}} = Quizes.delete_quiz(quiz)
    assert_raise Ecto.NoResultsError, fn -> Quizes.get_quiz!(quiz.id) end
  end

  test "change_quiz/1 returns a quiz changeset" do
    quiz = quiz_fixture()
    assert %Ecto.Changeset{} = Quizes.change_quiz(quiz)
  end
end
end
