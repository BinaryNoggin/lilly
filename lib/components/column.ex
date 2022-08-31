defmodule Lilly.Components.Column do
  use Surface.Component, slot: "cols"

  @doc "The field to be rendered"
  prop field, :string, required: true
end
