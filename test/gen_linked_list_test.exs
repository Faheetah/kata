defmodule GenLinkedListTest do
  use ExUnit.Case

  alias Kata.GenLinkedList

  test "links a list" do
    head =
      GenLinkedList.start_link("one")
      |> GenLinkedList.push("two")
      |> GenLinkedList.push("three")

    {head, "three"} = GenLinkedList.next(head)
    {head, "two"} = GenLinkedList.next(head)
    {_head, "one"} = GenLinkedList.next(head)
  end
end

