defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end

  def print_multiple_times(_msg, 0) do
    :ok
  end
end

defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)] 
  end

  def double_each([]) do
    []
  end
end

Recursion.print_multiple_times("Hello!", 3)

IO.puts Math.sum_list([1, 2, 3], 0)
IO.puts Math.sum_list([1, 2, 3], 2)

IO.puts inspect(Math.double_each([1, 2, 3]), charlists: :as_lists)
IO.puts inspect(Math.double_each([5, 20, 50]), charlists: :as_lists)

IO.puts inspect(Enum.reduce([1, 2, 3], 0, fn x, acc -> x + acc end), charlists: :as_lists)
IO.puts inspect(Enum.map([1, 2, 3], fn x -> x * 2 end), charlists: :as_lists)
IO.puts inspect(Enum.reduce([1, 2, 3], 0, &+/2), charlists: :as_lists)
IO.puts inspect(Enum.map([1, 2, 3], &(&1 * 2)), charlists: :as_lists)
