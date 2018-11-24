defmodule PhotoManager.Photos.Photo do
  use Ecto.Schema
  import Ecto.Changeset


  schema "photos" do
    field :filename, :string
    field :path, :string

    timestamps()
  end

  @doc false
  def changeset(photo, attrs) do
    photo
    |> cast(attrs, [:filename, :path])
    |> validate_required([:filename, :path])
  end
end
