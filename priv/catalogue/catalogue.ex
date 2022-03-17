defmodule Lilly.Catalogue do
  use Surface.Catalogue

  @impl Surface.Catalogue
  def config do
    [
      head_css: """
      <link href="https://cdn.jsdelivr.net/npm/daisyui@1.25.4/dist/full.css" rel="stylesheet" type="text/css" />
      <link href="https://cdn.jsdelivr.net/npm/tailwindcss@3.0.18/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
      """,
      playground: [
        body: [
          style: "padding: 1.5rem; height: 100%;",
          class: "has-background-light"
        ]
      ]
    ]
  end
end
