defmodule Kata.FizzBuzz do
  @moduledoc """
  Simple fizzbuzz implementation using pattern matching
  """

  def run(number) do
    Enum.map(1..number, fn n ->
      case {rem(n, 3), rem(n, 5)} do
        {0,0} -> "fizzbuzz"
        {0,_} -> "fizz"
        {_,0} -> "buzz"
        _ -> Integer.to_string(n)
      end
    end)
  end
end
