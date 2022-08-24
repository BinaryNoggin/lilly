defmodule Lilly.Catalogue do
  use Surface.Catalogue

  load_asset("assets/app.css", as: :app_css)
  load_asset("assets/tailwind.css", as: :tailwind_css)
  load_asset("assets/app.js", as: :app_js)

  @impl Surface.Catalogue
  def config do
    [
      head_css: "<style>#{@app_css}</style><style>#{@tailwind_css}</style>",
      head_js: "<script>#{@app_js}</script>",
      playground: [
        body: [
          style: "padding: 1.5rem; height: 100%;",
          class: "has-background-light"
        ]
      ]
    ]
  end
end
