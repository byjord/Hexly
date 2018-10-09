defmodule Hexly.Tarball do
  @doc """
  Unpacks a package tarball.
  """
  def unpack(tarball, output),
    do: :hex_tarball.unpack(tarball, output)

  @doc """
  Creates a package tarball.
  """
  def pack(metadata, files),
    do: :hex_tarball.create(metadata, files)
end
