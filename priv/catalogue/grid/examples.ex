defmodule Lilly.Catalogue.Grid.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.Grid,
    catalogue: Lilly.Catalogue,
    height: "250px",
    direction: "vertical"

  alias Lilly.Components.Column

  @albums [
    %{name: "The Dark Side of the Moon", artist: "Pink Floyd", released: "March 1, 1973"},
    %{name: "OK Computer", artist: "Radiohead", released: "June 16, 1997"},
    %{name: "Disraeli Gears", artist: "Cream", released: "November 2, 1967", selected: true },
    %{name: "Physical Graffiti", artist: "Led Zeppelin", released: "February 24, 1975"}
  ]

  def render(assigns) do
    assigns = assign(assigns, :albums, @albums)

    ~F"""
    <div>
      <Grid items={@albums}>
        <Column field="name" />
        <Column field="artist" />
        <Column field="released" />
      </Grid>
    </div>
    """
  end

end
