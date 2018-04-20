defmodule FizzBuzz do
  def play_game(number) when number >= 1 do
    1..number
    |> Enum.map(&player_turn/1)
    |> Enum.join(", ")
  end

  defp player_turn(number), do: fizz_buzz(number, rem(number, 3), rem(number, 5))
  defp fizz_buzz(_number, 0, 0), do: "FizzBuzz"
  defp fizz_buzz(_number, 0, _mod_five), do: "Fizz"
  defp fizz_buzz(_number, _mod_three, 0), do: "Buzz"
  defp fizz_buzz(number, _mod_three, _mod_five), do: number
end
