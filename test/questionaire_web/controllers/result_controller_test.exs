defmodule QuestionaireWeb.ResultControllerTest do
  use QuestionaireWeb.ConnCase

  import Questionaire.AccountsFixtures

  @create_attrs %{status: "some status", user_quiz_mapping_id: 42}
  @update_attrs %{status: "some updated status", user_quiz_mapping_id: 43}
  @invalid_attrs %{status: nil, user_quiz_mapping_id: nil}

  describe "index" do
    test "lists all results", %{conn: conn} do
      conn = get(conn, Routes.result_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Results"
    end
  end

  describe "new result" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.result_path(conn, :new))
      assert html_response(conn, 200) =~ "New Result"
    end
  end

  describe "create result" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.result_path(conn, :create), result: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.result_path(conn, :show, id)

      conn = get(conn, Routes.result_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Result"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.result_path(conn, :create), result: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Result"
    end
  end

  describe "edit result" do
    setup [:create_result]

    test "renders form for editing chosen result", %{conn: conn, result: result} do
      conn = get(conn, Routes.result_path(conn, :edit, result))
      assert html_response(conn, 200) =~ "Edit Result"
    end
  end

  describe "update result" do
    setup [:create_result]

    test "redirects when data is valid", %{conn: conn, result: result} do
      conn = put(conn, Routes.result_path(conn, :update, result), result: @update_attrs)
      assert redirected_to(conn) == Routes.result_path(conn, :show, result)

      conn = get(conn, Routes.result_path(conn, :show, result))
      assert html_response(conn, 200) =~ "some updated status"
    end

    test "renders errors when data is invalid", %{conn: conn, result: result} do
      conn = put(conn, Routes.result_path(conn, :update, result), result: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Result"
    end
  end

  describe "delete result" do
    setup [:create_result]

    test "deletes chosen result", %{conn: conn, result: result} do
      conn = delete(conn, Routes.result_path(conn, :delete, result))
      assert redirected_to(conn) == Routes.result_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.result_path(conn, :show, result))
      end
    end
  end

  defp create_result(_) do
    result = result_fixture()
    %{result: result}
  end
end
