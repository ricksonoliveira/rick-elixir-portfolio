defmodule TrelloTaskerWeb.CardLive do
  use TrelloTaskerWeb, :live_view

  alias Phoenix.View
  alias TrelloTaskerWeb.CardView


  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assings) do
    View.render(CardView, "index.html", assings)
  end
end
