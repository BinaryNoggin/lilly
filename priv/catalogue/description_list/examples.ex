defmodule Lilly.Catalogue.DescriptionList.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.DescriptionList,
    catalogue: Lilly.Catalogue,
    height: "900px",
    direction: "vertical"

  alias Lilly.Components.DescriptionRow

  @books [
    %{
      author: "Neil Gaiman",
      title: "American Gods",
      published: "2001",
      genre: "fiction / fantasy"
    },
    %{
      author: "Anne McCaffrey",
      title: "Dragonsdawn",
      published: "1979",
      genre: "science fiction / fantasy"
    }
  ]

  def render(assigns) do
    assigns = assign(assigns, :books, @books)

    ~F"""
    {#for book <- @books}
      <DescriptionList heading="Book Information" subheading="Details" item={book} striped>
        <DescriptionRow field={:title} label="Book Title"/>
        <DescriptionRow field={:author} />
        <DescriptionRow field={:genre} class="text-blue-900 bg-red-100"/>
        <DescriptionRow field={:published} />
      </DescriptionList>
      <br />
      {/for}
    """
  end
end
