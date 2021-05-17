defmodule Squirrel.Repo do
  use Ecto.Repo,
    otp_app: :squirrel,
    adapter: Ecto.Adapters.Postgres
end
