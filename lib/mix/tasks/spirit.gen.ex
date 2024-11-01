defmodule Mix.Tasks.Spirit.Gen do
  use Mix.Task

  @base_url "https://api.github.com/repos/PracticeCraft/spirit-exercises/contents/"

  def run(args) do
    {opts, remaining_args, _} =
      OptionParser.parse(args,
        switches: [
          path: :string
        ]
      )

    path = opts[:path] || @base_url

    handle_args(path, remaining_args)
  end

  # If no args given, fetch options and display
  defp handle_args(path, []) do
    startup_sequence()

    repo_contents =
      MixHelpers.fetch_gh_contents!(path)
      |> MixHelpers.get_dirs()

    print_options(repo_contents)
  end

  defp handle_args(path, [arg]) do
    startup_sequence()

    repo_contents =
      MixHelpers.fetch_gh_contents!(path)
      |> MixHelpers.get_dirs()

    found_dir =
      repo_contents
      |> Enum.find(:not_found, fn %{"name" => name} ->
        name == arg
      end)

    case found_dir do
      :not_found -> print_options(repo_contents)
      dir -> download_contents(dir)
    end
  end

  defp download_contents(%{"url" => url}) do
    MixHelpers.fetch_gh_contents!(url)
    |> Enum.map(&MixHelpers.download_content_object/1)
  end

  defp startup_sequence() do
    {:ok, _} = Application.ensure_all_started(:req)
  end

  defp print_options(repo_contents) do
    info_block_output()

    Mix.Shell.IO.info("Available options are:\n")

    repo_contents
    |> Enum.map(fn %{"name" => name} -> name end)
    |> Enum.map(&Mix.Shell.IO.info/1)

    Mix.Shell.IO.info("")
  end

  defp info_block_output() do
    Mix.Shell.IO.error("** Error: invalid command")

    Mix.Shell.IO.info("""

    Spirit Gen needs to run with one string argument for the exercise to download
    Each string argument should be snake case
    Either no arg was provided or there was no match

    Example: basic_types
    """)
  end
end
