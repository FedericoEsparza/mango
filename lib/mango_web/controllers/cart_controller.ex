defmodule MangoWeb.CartController do
  use MangoWeb, :controller
  alias Mango.Sales
  
  # def add(conn, params) do
  #   text(conn, "you got here")
  # end


  def add(conn, %{"cart" => cart_params}) do
    cart = "?"
    case Sales.add_to_cart(cart, cart_params) do
      {:ok, _} -> IO.puts "OK clause"
        # {:error, _} ->
        # handle the failure
    end
  end

end