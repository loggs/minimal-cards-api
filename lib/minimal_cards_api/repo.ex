defmodule MinimalCardsApi.Repo do
  use Ecto.Repo,
    otp_app: :minimal_cards_api,
    adapter: Ecto.Adapters.Postgres
end
