defmodule Spirit.Exercises.BasicTypesTest do
  use ExUnit.Case

  test "simple_tuple/0" do
    result = Spirit.Exercises.BasicTypes.simple_tuple()

    assert {atom, list} = result
    assert atom == :ok
    assert list == [1, 2]
  end

  test "format_percentage/1" do
    result = Spirit.Exercises.BasicTypes.format_percentage(0.5)

    assert result == "50%"

    result = Spirit.Exercises.BasicTypes.format_percentage(-1.236)

    assert result == "-124%"
  end

  test "opposites?/2" do
    assert Spirit.Exercises.BasicTypes.opposites?(true, false) == true
    assert Spirit.Exercises.BasicTypes.opposites?(nil, []) == true
    assert Spirit.Exercises.BasicTypes.opposites?(1, "hi") == false
  end

  test "boolean_opposites?/2" do
    assert Spirit.Exercises.BasicTypes.boolean_opposites?(true, false) == true

    assert_raise BadBooleanError, fn ->
      Spirit.Exercises.BasicTypes.boolean_opposites?(nil, [])
    end

    assert_raise BadBooleanError, fn ->
      Spirit.Exercises.BasicTypes.boolean_opposites?(1, "hi")
    end
  end

  test "shout/1" do
    assert Spirit.Exercises.BasicTypes.shout("hi") == "HI!"
  end
end
