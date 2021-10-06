defmodule Kata.LinkedListTest do
  use ExUnit.Case

  alias Kata.LinkedList

  test "links a list" do
    head = ["one"]
      |> LinkedList.push("two")
      |> LinkedList.push("three")

    {head, "three"} = LinkedList.next(head)
    {head, "two"} = LinkedList.next(head)
    {_head, "one"} = LinkedList.next(head)
  end
end

