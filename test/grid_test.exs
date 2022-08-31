defmodule Lilly.Components.GridTest do
  use ExUnit.Case, async: true
  use Surface.LiveViewTest
  use AssertHTML

  alias Lilly.Components.Grid
  alias Lilly.Components.Column

  test "does the grid grid goodly" do
    html =
      render_surface do
        ~F"""
        <Grid items={[%{name: "Lewis"}]}>
          <Column field="name" />
        </Grid>
        """
      end

    assert_html(html,
      class: "table is-bordered is-striped is-hoverable is-fullwidth"
    )
  end
end
