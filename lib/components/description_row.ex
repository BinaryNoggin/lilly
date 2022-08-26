defmodule Lilly.Components.DescriptionRow do
  use Surface.Component, slot: "rows"

  @moduledoc """
  Defines a row for the parent description list component

   The row instance is automatically added to the lists'
  `rows` slot.
  """

  @doc "The field from the desciption list item"
  prop field, :atom, required: true

  @doc "A custom label for the item"
  prop label, :string, required: false

  @doc "classes to add after the default classes"
  prop class, :css_class, default: ""
end
