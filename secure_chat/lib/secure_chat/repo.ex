defmodule SecureChat.Repo do
  use Ecto.Repo,
    otp_app: :secure_chat,
    adapter: Ecto.Adapters.SQLite3
end
