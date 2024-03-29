Logger.configure(level: :debug)

defmodule Surface.Catalogue.ErrorView do
  use Phoenix.View,
    root: "lib/surface/catalogue/templates",
    namespace: Surface.Catalogue
end

Surface.Catalogue.Server.start(
  watchers: [
    # Start the esbuild watcher by calling Esbuild.install_and_run(:default, args)
    esbuild: {Esbuild, :install_and_run, [:catalogue, ~w(--sourcemap=inline --watch)]},
    npx: [
      "tailwindcss",
      "-i",
      "./css/app.css",
      "--minify",
      "-o",
      "../priv/catalogue/assets/tailwind.css",
      "--watch",
      cd: Path.expand("./assets", __DIR__)
    ]
  ],
  reloadable_compilers: [:phoenix, :elixir, :surface],
  http: [port: 4001],
  live_reload: [
    patterns: [
      ~r"lib/lilly/.*(ex|js)$",
      ~r"priv/catalogue/.*ex$"
    ]
  ]
)
