defmodule PhotoManager.Repo do
  use Ecto.Repo,
    otp_app: :photo_manager,
    adapter: Ecto.Adapters.Postgres
end
