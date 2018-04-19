defmodule FizzBuzz do
  def play_game(number) when number >= 1 do
    1..number
    |> Enum.map(&player_turn/1)
    |> Enum.join(", ")
  end

  defp player_turn(number) do
    # Replace with your real answer
    number
  end
end
