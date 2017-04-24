defmodule KaminariApi.Router do
  use KaminariApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KaminariApi do
    pipe_through :api
    resources "/documents", DocumentController, except: [:new, :edit]
  end
end
