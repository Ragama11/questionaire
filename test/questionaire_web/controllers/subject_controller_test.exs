defmodule QuestionaireWeb.SubjectControllerTest do
  use QuestionaireWeb.ConnCase

  import Questionaire.AccountsFixtures

  @create_attrs %{name: "some name"}
  @update_attrs %{name: "some updated name"}
  @invalid_attrs %{name: nil}

  describe "index" do
    test "lists all subjects", %{conn: conn} do
      conn = get(conn, Routes.subject_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Subjects"
    end
  end

  describe "new subject" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.subject_path(conn, :new))
      assert html_response(conn, 200) =~ "New Subject"
    end
  end

  describe "create subject" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.subject_path(conn, :create), subject: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.subject_path(conn, :show, id)

      conn = get(conn, Routes.subject_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Subject"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.subject_path(conn, :create), subject: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Subject"
    end
  end

  describe "edit subject" do
    setup [:create_subject]

    test "renders form for editing chosen subject", %{conn: conn, subject: subject} do
      conn = get(conn, Routes.subject_path(conn, :edit, subject))
      assert html_response(conn, 200) =~ "Edit Subject"
    end
  end

  describe "update subject" do
    setup [:create_subject]

    test "redirects when data is valid", %{conn: conn, subject: subject} do
      conn = put(conn, Routes.subject_path(conn, :update, subject), subject: @update_attrs)
      assert redirected_to(conn) == Routes.subject_path(conn, :show, subject)

      conn = get(conn, Routes.subject_path(conn, :show, subject))
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, subject: subject} do
      conn = put(conn, Routes.subject_path(conn, :update, subject), subject: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Subject"
    end
  end

  describe "delete subject" do
    setup [:create_subject]

    test "deletes chosen subject", %{conn: conn, subject: subject} do
      conn = delete(conn, Routes.subject_path(conn, :delete, subject))
      assert redirected_to(conn) == Routes.subject_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.subject_path(conn, :show, subject))
      end
    end
  end

  defp create_subject(_) do
    subject = subject_fixture()
    %{subject: subject}
  end
end
