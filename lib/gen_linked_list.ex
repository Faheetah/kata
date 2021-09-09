defmodule Kata.GenLinkedList do
  use GenServer

  defstruct [:value, :next]

  def push(pid, value), do: GenServer.call(pid, {:push, value})
  def next(pid), do: GenServer.call(pid, :next)

  def start_link(value, next \\ nil) do
    {:ok, pid} = GenServer.start_link(__MODULE__, {value, next})
    pid
  end

  def init({value, next}) do
    {:ok, %__MODULE__{value: value, next: next}}
  end

  def handle_call({:push, value}, _from, state) do
    {:ok, next} = GenServer.start_link(__MODULE__, {value, self()})
    {:reply, next, state}
  end

  def handle_call(:next, _from, state) do
    {:reply, {state.next, state.value}, state}
  end
end
