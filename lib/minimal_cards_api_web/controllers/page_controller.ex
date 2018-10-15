defmodule MinimalCardsApiWeb.PageController do
  use MinimalCardsApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
