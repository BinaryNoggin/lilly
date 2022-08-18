defmodule Lilly.Components.DetailRow do
  use Surface.Component

  prop label, :string, default: ""
  prop value, :string, default: ""
  prop striped, :boolean, default: false

  def render(assigns) do
    ~F"""
    <div class={"px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6", is_striped(assigns)}>
      <dt class="text-sm font-medium text-gray-500">{@label}</dt>
      <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">{@value}</dd>
    </div>
    """
  end

  defp is_striped(assigns) do
    if assigns.striped do
      "bg-gray-50"
    else
      "bg-white"
    end
  end
end
