defmodule Concat do
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end

  #def testing_defaults(x \\ (fn -> 1 end)) do
  #  x
  #end

  # A function head declaring defaults
  def join2(a, b \\ nil, sep \\ " ")

  def join2(a, b, _sep) when is_nil(b) do
    a
  end

  def join2(a, b, sep) do
    a <> sep <> b
  end
end

IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "_")

#IO.puts Concat.testing_defaults()
#IO.puts Concat.testing_defaults(2)

IO.puts Concat.join2("Hello", "world")
IO.puts Concat.join2("Hello", "world", "_")
IO.puts Concat.join2("Hello")
