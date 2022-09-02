defmodule Lilly.Catalogue.CardAsLink.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.CardAsLink,
    catalogue: Lilly.Catalogue,
    height: "900px",
    direction: "vertical"

  def render(assigns) do
    ~F"""
      <CardAsLink>
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Noteworthy technology acquisitions 2021</h5>
        <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
      </CardAsLink>
    """
  end
end
