defmodule FlamingParagon.Repo do
  use Ecto.Repo,
    otp_app: :flaming_paragon,
    adapter: Ecto.Adapters.Postgres
end
