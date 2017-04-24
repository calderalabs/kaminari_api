defmodule KaminariApi.Document do
  use KaminariApi.Web, :model

  schema "documents" do
    field :title, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end

  def parse(text) do
    {:ok, parsed_text} = Exkanji.parse(text)

    parsed_text
    |> Enum.map(fn(part) ->
      part
      |> Map.take([:base, :read])
      |> Map.update!(:read, &(Exkanji.hiragana(&1)))
    end)
  end
end
