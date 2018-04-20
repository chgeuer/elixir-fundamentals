defmodule ListUtils do
  # Exercise 7
  def reduce([], _reducer, accumulator), do: accumulator

  def reduce([head | tail], reducer, accumulator),
    do: reduce(tail, reducer, reducer.(head, accumulator))

  def map([], _transform_fn), do: []
  def map([head | tail], transform_fn), do: [transform_fn.(head) | map(tail, transform_fn)]

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
