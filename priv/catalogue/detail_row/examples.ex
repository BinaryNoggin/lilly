defmodule Lilly.Catalogue.DetailRow.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.DetailRow,
    catalogue: Lilly.Catalogue

  def render(assigns) do
    ~F"""
      <DetailRow label="Author Name" value="Neil Gaiman" />
    """
  end
end

defmodule Lilly.Catalogue.DetailRow.Example02 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.DetailRow,
    catalogue: Lilly.Catalogue

  def render(assigns) do
    ~F"""
      <DetailRow label="Title" value="The Ocean at the End of the Lane" striped={true} />
    """
  end
end
