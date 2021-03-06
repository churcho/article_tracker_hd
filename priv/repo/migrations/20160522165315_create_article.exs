defmodule ArticleTrackerHd.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :url, :string
      add :categories, :ltree

      timestamps
    end
    create index(:articles, [:categories], using: "GIST")

  end
end
