# Used by "mix format"
[
  import_deps: [:phoenix, :surface],
  inputs: [
    "*.{ex,exs}",
    "{mix,.formatter}.exs",
    "{config,lib,test, priv}/**/*.{ex,exs}",
    "priv/catalogue/**/*.{ex,exs,sface}",
    "{lib,test}/**/*.{ex,exs,sface}"
  ]
]
