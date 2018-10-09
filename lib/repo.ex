defmodule Hexly.Repo do
  def clean_response({:ok, {200, _headers, body}}), do: body

  @doc """
  Gets names resource from the repository.
  """
  def get_names(config \\ Hexly.config),
    do: :hex_repo.get_names(config)

  @doc """
  Gets versions resource from the repository.
  """
  def get_versions(config \\ Hexly.config),
    do: :hex_repo.get_versions(config)

  @doc """
  Gets package resource from the repository.
  """
  def get_package(name, config \\ Hexly.config),
    do: :hex_repo.get_package(config, name)

  @doc """
  Gets tarball from the repository.
  """
  def get_tarball(name, version, config \\ Hexly.config),
    do: :hex_repo.get_tarball(config, name, version)

  @doc """
  Unpacks a package tarball.
  """
  def unpack_tarball(tarball, path),
    do: :hex_tarball.unpack(tarball, path)

  @doc """
  Creates a package tarball.
  """
  def pack_tarball(metadata, files),
    do: :hex_tarball.create(metadata, files)
end
