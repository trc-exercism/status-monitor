defmodule StatusMonitor.StatusController do
  use StatusMonitor.Web, :controller

  def index(conn, %{"version" => version, }) do
    status_information = %{
      :version => _clean_version(version)
    }
    more_information = %{
      :name => "Fancy Feast"
    }
    render conn, :index, status_information: status_information, more_information: more_information
  end

  defp _clean_version(version_string) do
    "ver" <> String.upcase(version_string)
  end

end
