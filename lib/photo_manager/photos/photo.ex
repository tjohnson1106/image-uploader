defmodule PhotoManager.Photos.Photo do
  use PhotoManagerWeb
  use Ecto.Schema
  import Ecto.Changeset

  schema "photos" do
    field(:filename, :string)
    field(:path, :string)

    timestamps()
  end

  @doc false
  def changeset(photo, attrs) do
    photo
    |> cast(attrs, [:filename, :path])
    |> validate_required([:filename, :path])
  end

  @data_dir Path.join(__DIR__, "../../", "data/photos")
  def persist(%Plug.Upload{filename: filename, path: path}) do
    File.cp(path, Path.join(@data_dir, filename))
  end
end
