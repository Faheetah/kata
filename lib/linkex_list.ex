defmodule Kata.LinkedList do
  def push(list, val), do: [val | list]
  def next([head | tail]), do: {tail, head}
end
