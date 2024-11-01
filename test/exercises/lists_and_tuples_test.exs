defmodule Spirit.Exercises.ListsAndTuplesTests do
  use ExUnit.Case

  doctest Spirit.Exercises.ListsAndTuples

  alias Spirit.Exercises.ListsAndTuples

  describe "Lists and Tuples Tests" do
    test "three_item_list/0" do
      list = ListsAndTuples.three_item_list()

      assert length(list) == 3
    end

    test "add_two_lists/2" do
      list_a = [1, 2, 3]
      list_b = [true, false, nil]

      result = ListsAndTuples.add_two_lists(list_a, list_b)

      assert result == [1, 2, 3, true, false, nil]
    end

    test "subtract_two_lists/2" do
      list_a = [1, true, 2, false, 3]
      list_b = [true, false]

      result = ListsAndTuples.subtract_two_lists(list_a, list_b)

      assert result == [1, 2, 3]
    end

    test "return_list_head/1" do
      head = ListsAndTuples.return_list_head([1, 2, 3])

      assert head == 1
    end

    test "return_list_tail/1" do
      tail = ListsAndTuples.return_list_tail([1, 2, 3])

      assert tail == [2, 3]
    end

    test "return_two_tuple/0" do
      result = ListsAndTuples.return_two_tuple(:hello, "world")

      assert result == {:hello, "world"}
    end

    test "return_tuple_size/1" do
      result = ListsAndTuples.return_tuple_size({:a, :b, :c})

      assert result == 3
    end

    test "return_list_length/1" do
      result = ListsAndTuples.return_list_length([1, 2, 3])

      assert result == 3
    end
  end
end

