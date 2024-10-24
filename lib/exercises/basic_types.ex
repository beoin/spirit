defmodule Spirit.Exercises.BasicTypes do
  @moduledoc """
  Exercises for "Basic Types"
  Guide Page: <https://hexdocs.pm/elixir/basic-types.html>

  Simple exercises for a simple guide, but they should get you used to basic
  Elixir syntax and data structures.

  """

  @doc """
  Returns a tuple with two elements:
  - The atom `:ok`
  - A list with the numbers 1 and 2

  """
  def simple_tuple() do
    {:ok, [1, 2]}
  end

  @doc """
  Converts the given proportion to a percentage, rounded to nearest integer,
  and formats it as a string with the percent sign.

  ## Examples

      iex> Spirit.Exercises.BasicTypes.format_percentage(0.5)
      iex> "50%"

      iex> Spirit.Exercises.BasicTypes.format_percentage(-1.236)
      iex> "-124%"

  """
  def format_percentage(proportion) do
    p = proportion * 100 |> round() |> to_string()
    p <> "%"
  end

  @doc """
  Checks if one argument is truthy and the other is falsy.

  ## Examples

      iex> Spirit.Exercises.BasicTypes.opposites?(true, false)
      true

      iex> Spirit.Exercises.BasicTypes.opposites?(nil, [])
      true

      iex> Spirit.Exercises.BasicTypes.opposites?(1, "hi")
      false

  """
  def opposites?(a, b) do
    !a or !b
  end

  @doc """
  Checks if one argument is `true` and other other is `false`.

  Raises if non-boolean arguments are given.

  ## Examples

      iex> Spirit.Exercises.BasicTypes.boolean_opposites?(true, false)
      true

      iex> Spirit.Exercises.BasicTypes.boolean_opposites?(nil, [])
      BadBooleanError

      iex> Spirit.Exercises.BasicTypes.boolean_opposites?(1, "hi")
      BadBooleanError

  """
  def boolean_opposites?(a, b) do
    a or b
  end

  @doc """
  Converts the given string to uppercase and appends an exclamation mark at the
  end.

      iex> Spirit.Exercises.BasicTypes.shout("hi")
      "HI!"

  """
  def shout(string) do
    String.upcase(string) <> "!"
  end
end
