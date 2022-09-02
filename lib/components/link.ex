defmodule Lilly.Components.Link do
  use Surface.Component

  prop uri, :uri, required: true

  prop css_class, :css_class

  slot default, required: false

  def render(assigns) do
    ~F"""
    <a href={@uri}" class={"", @css_class}>
      <#slot />
    </a>
    """
  end
end
