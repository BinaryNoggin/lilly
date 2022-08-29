defmodule Lilly.Components.DescriptionList do
  use Surface.Component

  alias Lilly.Helpers

  @moduledoc """
  A simple description list
  """

  @doc "The heading to be shown on the list"
  prop heading, :string, required: true

  @doc "The subheading is shown on the list and explains a bit more about the object"
  prop subheading, :string, required: true

  @doc "Contains all the fields that are used for displaying the object"
  prop item, :map

  @doc "Adds stripes to the list rows"
  prop striped, :boolean, default: false

  @doc "The rows of the list"
  slot rows

  def render(assigns) do
    ~F"""
      <div class="bg-white shadow overflow-hidden sm:rounded-lg">
        <div class="px-4 py-5 sm:px-6">
          <h3 class="text-lg leading-6 font-medium text-gray-900">{@heading}</h3>
          <p class="mt-1 max-w-2xl text-sm text-gray-500">{@heading}</p>
        </div>
        <div class="border-t border-gray-200">
          {#for {row, is_striped} <- Enum.zip(@rows, Stream.cycle([false, @striped]))}
            <div class={"px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6", "bg-gray-300": is_striped}>
              <dt class={"text-sm font-medium text-gray-500", row.class}>{label_or_field(row)}</dt>
              <dd class={"mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2", row.class}>{@item[row.field]}</dd>
            </div>
          {/for}
        </div>
      </div>
    """
  end

  defp label_or_field(row) do
    if row.label == nil do
      Helpers.humanize(row.field)
    else
      Helpers.humanize(row.label)
    end
  end
end
