defmodule Lilly.Helpers do
  @doc """
  Converts an attribute/form field into its humanize version.
  ## Examples
      iex> Lilly.Helpers.humanize(:username)
      "Username"
      iex> Lilly.Helpers.humanize(:created_at)
      "Created at"
      iex> Lilly.Helpers.humanize("user_id")
      "User"
  """
  @spec humanize(atom | String.t) :: String.t
  def humanize(atom) when is_atom(atom),
    do: humanize(Atom.to_string(atom))
  def humanize(bin) when is_binary(bin) do
    bin =
      if String.ends_with?(bin, "_id") do
        binary_part(bin, 0, byte_size(bin) - 3)
      else
        bin
      end

    bin |> String.replace("_", " ") |> String.capitalize
  end
end
