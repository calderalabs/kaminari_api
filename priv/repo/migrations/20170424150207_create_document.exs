defmodule KaminariApi.Repo.Migrations.CreateDocument do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :title, :string
      add :body, :string

      timestamps()
    end

  end
end
