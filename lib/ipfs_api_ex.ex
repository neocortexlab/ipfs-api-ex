defmodule IPFSApi do
  @moduledoc """
  Documentation for IPFSApi.
  """
  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost:5001/api/v0"
  plug Tesla.Middleware.JSON

  alias Tesla.Multipart


  def cat_cmd(multihash) when is_bitstring(multihash) do
     {:ok, response} = get("/cat?arg=" <> multihash)
     response.body
  end

  def get_cmd(multihash) when is_bitstring(multihash) do
     {:ok, response} = get("/get?arg=" <> multihash)
     response.body
  end

  def add_cmd(file) do
   mp = Multipart.new
        |> Multipart.add_file(file)
   {:ok, response} = post("/add", mp)
   response.body
  end
end
