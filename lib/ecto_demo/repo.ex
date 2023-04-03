defmodule EctoDemo.Repo do
  use Ecto.Repo,
    otp_app: :ecto_demo,
    adapter: Ecto.Adapters.Postgres
end
