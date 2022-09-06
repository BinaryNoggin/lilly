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
