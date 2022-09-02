defmodule Lilly.Components.Card do
  use Surface.Component

  @moduledoc """
  Basic card component with room for expansion
  """

  @doc "Card contents goes here"
  slot default

  def render(assigns) do
    ~F"""
    <div class="block p-6 max-w-sm bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
      <#slot />
    </div>
    """
  end
end

defmodule Lilly.Components.CardAsLink do
  use Surface.Component

  alias Lilly.Components.Card
  alias Lilly.Components.Link

  @moduledoc """
  Expanding on a basic card we wrap it in a Link to make the entire card 'clickable'
  """
  @doc "Card contents go here"
  slot default

  def render(assigns) do
    ~F"""
    <Link uri="" css_class="hover:bg-gray-100 dark:hover:bg-gray-700">
      <Card>
        <#slot />
      </Card>
    </Link>
    """
  end
end
