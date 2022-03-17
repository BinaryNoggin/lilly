import Config

config :phoenix, :json_library, Jason

config :surface_catalogue, :assets_path, "/assets"

config :surface,
  components: [
    {Surface.Components.Form.Field, [default_class: "field"]},
    {Surface.Components.Form.Label, [default_class: "label"]}
  ]

config :tailwind, version: "3.0.12"

config :esbuild,
  version: "0.14.0",
  catalogue: [
    args:
      ~w(../deps/surface_catalogue/assets/js/app.js --bundle --target=es2016 --minify --outdir=../priv/static/assets/catalogue),
    cd: Path.expand(__DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]
