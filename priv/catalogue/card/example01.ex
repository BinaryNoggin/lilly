defmodule Lilly.Card do
  use Surface.Component

  def render(assigns) do
~F"""
 <h1>Hello</h1>
"""
  end
end

defmodule Lilly.Catalogue.Card.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Card,
    catalogue: Lilly.Catalogue,
    height: "800px",
    title: "WAT"

  def render(assigns) do
    ~F"""
      <Card/>
    """
  end
end
