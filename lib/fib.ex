defmodule Fib do
  # NOTE: Enum.take([1, 2, 3, 4], -2) returns [3, 4]

  def reverse(x) when x < 0, do: nil
  def reverse(0), do: []
  def reverse(1), do: [1]
  def reverse(2), do: [1, 1]
  def reverse(n), do: reverse_impl(n - 2, reverse(2))

  defp reverse_impl(0, list), do: list
  defp reverse_impl, list = [head1 | [head2 | _]]), do: reverse_impl(n - 1, [head1 + head2 | list])

  def normal(x) when x < 0, do: nil
  def normal(x), do: x |> reverse |> Enum.reverse()
end
