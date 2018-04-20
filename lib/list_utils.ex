defmodule ListUtils do
  # Exercise 7
  def reduce(list, reducer, accumulator) do
  end

  def map(original, transform_fn, transformed \\ []) do
  end

  # Exercise 8
  def bounds(list), do: _bounds(list, {nil, nil})
  defp _bounds([], {min, max}), do: {min, max}
  defp _bounds([head | tail], {nil, nil}), do: _bounds(tail, {head, head})
  defp _bounds([head | tail], {min, max}) when head < min, do: _bounds(tail, {head, max})
  defp _bounds([head | tail], {min, max}) when max < head, do: _bounds(tail, {min, head})
  defp _bounds([head | tail], {min, max}), do: _bounds(tail, {min, head})

  # Exercise 13
  def pmap(list, func) do
    # Add your exercise 13 solution here
  end
end
