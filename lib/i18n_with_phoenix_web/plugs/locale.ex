defmodule I18nWithPhoenixWeb.Plugs.Locale do
  import Plug.Conn

  @locales Gettext.known_locales(I18nWithPhoenixWeb.Gettext)

  def init(default_locale), do: default_locale

  def call(%Plug.Conn{params: %{"locale" => locale}} = conn, _default_locale)
      when locale in @locales do
    set_locale(conn, locale)
  end

  def call(conn, default_locale) do
    set_locale(conn, conn.cookies["locale"] || default_locale)
  end

  defp set_locale(conn, locale) do
    Gettext.put_locale(I18nWithPhoenixWeb.Gettext, locale)

    conn
    |> put_resp_cookie("locale", locale, max_age: :timer.hours(24) * 365)
    |> assign(:locale, locale)
  end
end
