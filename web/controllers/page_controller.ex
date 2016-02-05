defmodule Pxredix.PageController do
  use Pxredix.Web, :controller

  def index(conn, _params) do
    # Set the data to Redis
    Redis.command(~w(SET test_value 1))
    # Get the value from Redis
    {:ok, redis_data} = Redis.command(~w(GET test_value))
    render conn, "index.html", redis_data: redis_data
  end
end
