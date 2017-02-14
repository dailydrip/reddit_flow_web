defmodule RedditFlowWeb.PageController do
  use RedditFlowWeb.Web, :controller
  alias RedditFlow.{TableAggregator}

  def index(conn, _params) do
    elixir =
      TableAggregator.run["elixir"]
      |> Enum.sort_by fn({_, value}) -> -value end

    elm =
      TableAggregator.run["elm"]
      |> Enum.sort_by fn({_, value}) -> -value end

    render conn, "index.html", %{data: %{"elixir" => elixir, "elm" => elm}}
  end
end
