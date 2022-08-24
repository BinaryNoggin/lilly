defmodule Lilly.Components.DescriptionRow do
  use Surface.Component, slot: "rows"

  prop field, :atom, required: true

  prop class, :css_class, default: ""
end
