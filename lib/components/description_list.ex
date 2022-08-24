defmodule Lilly.Components.DescriptionList do
  use Surface.Component

  prop heading, :string, required: true

  prop subheading, :string, required: true

  prop item, :map

  prop striped, :boolean, default: false

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
              <dt class={"text-sm font-medium text-gray-500", row.class}>{row.field}</dt>
              <dd class={"mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2", row.class}>{@item[row.field]}</dd>
            </div>
          {/for}
        </div>
      </div>
    """
  end
end
