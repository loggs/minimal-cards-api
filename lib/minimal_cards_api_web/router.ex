defmodule MinimalCardsApiWeb.Router do
  use MinimalCardsApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MinimalCardsApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", MinimalCardsApiWeb do
    pipe_through :api

    get "/cards", PageController, :cards
  end
end
