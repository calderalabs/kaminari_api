defmodule KaminariApi.DocumentView do
  use KaminariApi.Web, :view

  def render("index.json", %{documents: documents}) do
    %{data: render_many(documents, KaminariApi.DocumentView, "document.json")}
  end

  def render("show.json", %{document: document}) do
    %{data: render_one(document, KaminariApi.DocumentView, "document.json")}
  end

  def render("document.json", %{document: document}) do
    %{id: document.id,
      title: KaminariApi.Document.parse(document.title),
      body: KaminariApi.Document.parse(document.body)}
  end
end
