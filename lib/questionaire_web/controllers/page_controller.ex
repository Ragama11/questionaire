defmodule QuestionaireWeb.PageController do
  use QuestionaireWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
