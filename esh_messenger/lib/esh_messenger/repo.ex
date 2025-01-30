defmodule EshMessenger.Repo do
  use Ecto.Repo,
    otp_app: :esh_messenger,
    adapter: Ecto.Adapters.Postgres
end
