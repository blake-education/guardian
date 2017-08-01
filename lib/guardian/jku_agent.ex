defmodule Guardian.JKUAgent do
  @moduledoc """
  Guardian JKU fetch behaviour.

  Guardian uses this if provided to retrieve the JWK specified by jku. This can be internally cached if needed.
  """

  @doc """
  Retrieves the JWK specified by the jku.
  """
  @callback get(kid :: String.t, uri :: String.t) :: {:ok, object :: term} | {:error, String.t}
end
