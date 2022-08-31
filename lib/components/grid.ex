defmodule Lilly.Components.Grid do
  use Surface.Component

  alias Lilly.Helpers

  @doc "The list of items to be rendered"
  prop items, :list, required: true

  @doc "The list of columns defining the Grid"
  slot cols

  def render(assigns) do
    ~F"""
    <table class="table is-bordered is-striped is-hoverable is-fullwidth">
      <thead>
        <tr>
          {#for col <- @cols}
            <th>{Helpers.humanize(col.field)}</th>
          {/for}
        </tr>
      </thead>
      <tbody>
        {#for item <- @items}
          <tr class={"is-selected": item[:selected]}>
            {#for col <- @cols, field = String.to_atom(col.field)}
              <td>{item[field]}</td>
            {/for}
          </tr>
        {/for}
      </tbody>
    </table>
    """
  end
end
