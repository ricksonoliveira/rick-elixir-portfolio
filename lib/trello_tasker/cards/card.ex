defmodule TrelloTasker.Cards.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :path, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs \\ %{}) do
    card
    |> cast(attrs, [:path])
    |> unique_constraint(:path, message: "This Card already exists!")
    |> validate_required([:path])
  end
end
