defmodule Lilly.Components.LinkTest do
  use ExUnit.Case, async: true
  use Surface.LiveViewTest
  use AssertHTML

  alias Lilly.Components.Link

  test "how many links can a link-chuck link if a link-chuck can chuck link?" do
    html =
      render_surface do
        ~F"""
        <Link uri="https://testexample.com" css_class="link clickable" />
        """
      end

    assert_html(html,
      class: "link clickable",
      href: "https://testexample.com"
    )
  end
end
