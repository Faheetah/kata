defmodule Kata.LinkedList do
  @moduledoc """
  Lists in Elixir are already linked lists. There is no reason to use
  Elixir logic to recreate the functionality of linked lists, as this
  would be less efficient than the underlying C implementation.
  """

  def push(list, val), do: [val | list]
  def next([head | tail]), do: {tail, head}
end
