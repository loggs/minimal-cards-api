defmodule MinimalCardsApiWeb.PageController do
  use MinimalCardsApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def cards(conn, _params) do
    json(conn, %{
      "long_uuid" => %{
        "flipped" => false,
        "front_text" => "Front",
        "back_text" => "Back",
        "edit_mode" => false
      }
    })
  end
end
