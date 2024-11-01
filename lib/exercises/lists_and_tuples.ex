defmodule Spirit.Exercises.ListsAndTuples do
  @moduledoc """
  Exercises for "Lists and Tuples"
  Guide Page: <https://hexdocs.pm/elixir/lists-and-tuples.html>

  These exercises will get you used to working with Lists and Tuples,
  which are the two most common data structures you will touch in Elixir.

  """

  @doc """
  Returns a list  with three items in it.
  Items should be the numbers 1, 2, and 3.

  ## Examples

      iex> list = Spirit.Exercises.ListsAndTuples.three_item_list()
      [1, 2, 3]
      iex> length(list)
      3
  """
  def three_item_list() do
    [1,2,3]
  end

  @doc """
  Takes 2 lists as input and adds them together.
  A single list consisting of the two original lists should be returned.

  ## Examples

      iex> list_a = [1, 2, 3]
      iex> list_b = [true, false, nil]
      iex> Spirit.Exercises.ListsAndTuples.add_two_lists(list_a, list_b)
      [1, 2, 3, true, false, nil]
  """
  def add_two_lists(list_a, list_b) do
    list_a ++ list_b
  end

  @doc """
  Subtracts the second list from the first list, returning the result.

  ## Examples

      iex> list_a = [1, true, 2, false, 3]
      iex> list_b = [true, false]
      iex> Spirit.Exercises.ListsAndTuples.subtract_two_lists(list_a, list_b)
      [1, 2, 3]
  """
  def subtract_two_lists(list_a, list_b) do
    list_a -- list_b
  end

  @doc """
  Returns just the head of a list

  ## Examples

      iex> Spirit.Exercises.ListsAndTuples.return_list_head([1, 2, 3])
      1
  """
  def return_list_head(list) do
    hd list
  end

  @doc """
  Returns just the tail of a list

  ## Examples

      iex> Spirit.Exercises.ListsAndTuples.return_list_tail([1, 2, 3])
      [2, 3]
  """
  def return_list_tail(list) do
    tl list
  end

  @doc """
  Returns a two-tuple.
  The first element is the atom :hello
  The second element is the string "world"

  ## Examples

      iex> Spirit.Exercises.ListsAndTuples.return_two_tuple(:hello, "world")
      {:hello, "world"}
  """
  def return_two_tuple(first_elem, second_elem) do
    {first_elem, second_elem}
  end

  @doc """
  Returns the size of the provided tuple

  ## Examples

      iex> Spirit.Exercises.ListsAndTuples.return_tuple_size({:a, :b, :c})
      3
  """
  def return_tuple_size(tuple) do
    tuple_size(tuple)
  end

  @doc """
  Returns the length of the provided list

  ## Examples

      iex> Spirit.Exercises.ListsAndTuples.return_list_length([1, 2, 3])
      3
  """
  def return_list_length(list) do
    length list
  end
end

