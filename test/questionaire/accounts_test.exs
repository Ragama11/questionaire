defmodule Questionaire.AccountsTest do
  use Questionaire.DataCase

  alias Questionaire.Accounts

  describe "accounts" do
    alias Questionaire.Accounts.Account

    import Questionaire.AccountsFixtures

    @invalid_attrs %{account_number: nil, balance: nil, currency: nil, user_id: nil}

    test "list_accounts/0 returns all accounts" do
      account = account_fixture()
      assert Accounts.list_accounts() == [account]
    end

    test "get_account!/1 returns the account with given id" do
      account = account_fixture()
      assert Accounts.get_account!(account.id) == account
    end

    test "create_account/1 with valid data creates a account" do
      valid_attrs = %{account_number: "some account_number", balance: "some balance", currency: "some currency", user_id: 42}

      assert {:ok, %Account{} = account} = Accounts.create_account(valid_attrs)
      assert account.account_number == "some account_number"
      assert account.balance == "some balance"
      assert account.currency == "some currency"
      assert account.user_id == 42
    end

    test "create_account/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_account(@invalid_attrs)
    end

    test "update_account/2 with valid data updates the account" do
      account = account_fixture()
      update_attrs = %{account_number: "some updated account_number", balance: "some updated balance", currency: "some updated currency", user_id: 43}

      assert {:ok, %Account{} = account} = Accounts.update_account(account, update_attrs)
      assert account.account_number == "some updated account_number"
      assert account.balance == "some updated balance"
      assert account.currency == "some updated currency"
      assert account.user_id == 43
    end

    test "update_account/2 with invalid data returns error changeset" do
      account = account_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_account(account, @invalid_attrs)
      assert account == Accounts.get_account!(account.id)
    end

    test "delete_account/1 deletes the account" do
      account = account_fixture()
      assert {:ok, %Account{}} = Accounts.delete_account(account)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_account!(account.id) end
    end

    test "change_account/1 returns a account changeset" do
      account = account_fixture()
      assert %Ecto.Changeset{} = Accounts.change_account(account)
    end
  end

  describe "user_quiz_mappinngs" do
    alias Questionaire.Accounts.User_quiz_mapping

    import Questionaire.AccountsFixtures

    @invalid_attrs %{quiz_id: nil, user_id: nil}

    test "list_user_quiz_mappinngs/0 returns all user_quiz_mappinngs" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      assert Accounts.list_user_quiz_mappinngs() == [user_quiz_mapping]
    end

    test "get_user_quiz_mapping!/1 returns the user_quiz_mapping with given id" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      assert Accounts.get_user_quiz_mapping!(user_quiz_mapping.id) == user_quiz_mapping
    end

    test "create_user_quiz_mapping/1 with valid data creates a user_quiz_mapping" do
      valid_attrs = %{quiz_id: 42, user_id: 42}

      assert {:ok, %User_quiz_mapping{} = user_quiz_mapping} = Accounts.create_user_quiz_mapping(valid_attrs)
      assert user_quiz_mapping.quiz_id == 42
      assert user_quiz_mapping.user_id == 42
    end

    test "create_user_quiz_mapping/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user_quiz_mapping(@invalid_attrs)
    end

    test "update_user_quiz_mapping/2 with valid data updates the user_quiz_mapping" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      update_attrs = %{quiz_id: 43, user_id: 43}

      assert {:ok, %User_quiz_mapping{} = user_quiz_mapping} = Accounts.update_user_quiz_mapping(user_quiz_mapping, update_attrs)
      assert user_quiz_mapping.quiz_id == 43
      assert user_quiz_mapping.user_id == 43
    end

    test "update_user_quiz_mapping/2 with invalid data returns error changeset" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user_quiz_mapping(user_quiz_mapping, @invalid_attrs)
      assert user_quiz_mapping == Accounts.get_user_quiz_mapping!(user_quiz_mapping.id)
    end

    test "delete_user_quiz_mapping/1 deletes the user_quiz_mapping" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      assert {:ok, %User_quiz_mapping{}} = Accounts.delete_user_quiz_mapping(user_quiz_mapping)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user_quiz_mapping!(user_quiz_mapping.id) end
    end

    test "change_user_quiz_mapping/1 returns a user_quiz_mapping changeset" do
      user_quiz_mapping = user_quiz_mapping_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user_quiz_mapping(user_quiz_mapping)
    end
  end

  describe "results" do
    alias Questionaire.Accounts.Result

    import Questionaire.AccountsFixtures

    @invalid_attrs %{status: nil, user_quiz_mapping_id: nil}

    test "list_results/0 returns all results" do
      result = result_fixture()
      assert Accounts.list_results() == [result]
    end

    test "get_result!/1 returns the result with given id" do
      result = result_fixture()
      assert Accounts.get_result!(result.id) == result
    end

    test "create_result/1 with valid data creates a result" do
      valid_attrs = %{status: "some status", user_quiz_mapping_id: 42}

      assert {:ok, %Result{} = result} = Accounts.create_result(valid_attrs)
      assert result.status == "some status"
      assert result.user_quiz_mapping_id == 42
    end

    test "create_result/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_result(@invalid_attrs)
    end

    test "update_result/2 with valid data updates the result" do
      result = result_fixture()
      update_attrs = %{status: "some updated status", user_quiz_mapping_id: 43}

      assert {:ok, %Result{} = result} = Accounts.update_result(result, update_attrs)
      assert result.status == "some updated status"
      assert result.user_quiz_mapping_id == 43
    end

    test "update_result/2 with invalid data returns error changeset" do
      result = result_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_result(result, @invalid_attrs)
      assert result == Accounts.get_result!(result.id)
    end

    test "delete_result/1 deletes the result" do
      result = result_fixture()
      assert {:ok, %Result{}} = Accounts.delete_result(result)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_result!(result.id) end
    end

    test "change_result/1 returns a result changeset" do
      result = result_fixture()
      assert %Ecto.Changeset{} = Accounts.change_result(result)
    end
  end
end
