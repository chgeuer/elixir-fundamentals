defmodule Github do
  @api Application.get_env(:elixir_fundamentals, :github_api)
  @token Application.get_env(:elixir_fundamentals, :github_token)

  @spec org_url(String.t()) :: String.t()
  def org_url(org_name) when is_binary(org_name), do: "#{@api}/orgs/#{org_name}"
  def org_url(_), do: raise(FunctionClauseError)

  @spec repo_url(String.t(), String.t()) :: String.t()
  def repo_url(owner_name, repo_name) when is_binary(owner_name) and is_binary(repo_name),
    do: "#{@api}/repos/#{owner_name}/#{repo_name}"

  def repo_url(_, _), do: raise(FunctionClauseError)

  def org(org_name) when is_binary(org_name), do: org_name |> org_url |> fetch

  def repo(owner_name, repo_name) when is_binary(owner_name) and is_binary(repo_name) do
    repo_url(owner_name, repo_name)
    |> fetch
  end

  defp fetch(url), do: url |> HTTPoison.get!() |> process_body

  defp process_body(%{body: response_body, status_code: status_code}),
    do: {atom_from_status(status_code), response_body |> Poison.decode!()}

  defp atom_from_status(200), do: :ok
  defp atom_from_status(_), do: :error
end
