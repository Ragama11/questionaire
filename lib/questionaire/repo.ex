defmodule Questionaire.Repo do
  use Ecto.Repo,
    otp_app: :questionaire,
    adapter: Ecto.Adapters.Postgres
end
