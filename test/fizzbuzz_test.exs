defmodule FizzBuzzTest do
  use ExUnit.Case

  alias Kata.FizzBuzz

  test "runs fizzbuzz" do
    expected = ~w[1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz]
    assert expected == FizzBuzz.run(30)
  end
end

