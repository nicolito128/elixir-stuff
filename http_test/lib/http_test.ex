defmodule HttpTest do
  @moduledoc """
  """

  @spec get(binary()) :: binary() | nil
  def get(url) when is_bitstring(url) do
    {:ok, response} = HTTPoison.get(url, [])
    {:ok, json} = Jason.decode(response.body)
    json
  end
end
