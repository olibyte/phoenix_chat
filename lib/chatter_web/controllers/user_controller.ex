defmodule Chatter.UserController do
  use ChatterWeb, :controller

  alias Chatter.User

  def index(conn, _params) do
    users = Repo.all(User)
    render(conn, "index.html", users: users)
  end
end
