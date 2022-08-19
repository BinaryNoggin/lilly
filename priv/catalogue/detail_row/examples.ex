defmodule Lilly.Catalogue.DetailRow.Example01 do
  use Surface.Catalogue.Example,
    subject: Lilly.Components.DetailRow,
    catalogue: Lilly.Catalogue,
    height: "320px",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <div class="bg-white shadow overflow-hidden sm:rounded-lg">
      <div class="px-4 py-5 sm:px-6">
        <h3 class="text-lg leading-6 font-medium text-gray-900">Book Information</h3>
        <p class="mt-1 max-w-2xl text-sm text-gray-500">Details</p>
      </div>
      <div class="border-t border-gray-200">
        <dl>
          <DetailRow label="Author Name" value="Neil Gaiman" />
          <DetailRow label="Title" value="The Ocean at the End of the Lane" striped={true} />
          <DetailRow label="Published" value="2013" />
        </dl>
      </div>
    </div>
    """
  end
end
