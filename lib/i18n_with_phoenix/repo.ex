defmodule I18nWithPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :i18n_with_phoenix,
    adapter: Ecto.Adapters.Postgres
end
