defmodule Lilly.Components.Link do
  use Surface.Component

  @moduledoc """
  Simple anchor/link component
  """

  @doc "URI for the Link"
  prop uri, :uri, required: true

  @doc "Optional CSS classes to style the Link"
  prop css_class, :css_class

  @doc "Contents of the Link component"
  slot default, required: false

  def render(assigns) do
    ~F"""
    <a href={@uri}" class={"", @css_class}>
      <#slot />
    </a>
    """
  end
end
