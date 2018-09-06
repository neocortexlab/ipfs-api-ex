defmodule IPFSApi do
  @moduledoc """
  Documentation for IPFSApi.
  """
  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost:5001/api/v0"
  plug Tesla.Middleware.JSON

  alias Tesla.Multipart

  def cat_cmd(ref) when is_bitstring(ref), do: get("/cat/" <> ref)

  def get_cmd(ref) when is_bitstring(ref), do: get("/get/" <> ref)

  def add_cmd(file_path) do
     post("/add", Multipart.new |> Multipart.add_file(file_path))
  end

  def body(result) do
    {:ok, response} = result
    response.body
  end
end
