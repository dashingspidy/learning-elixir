defmodule GuessingGame do
  @rand_numb Enum.random(1..100)

  def guess() do
    user_input = IO.gets("Guess a number: ") |> String.trim() |> String.to_integer()

    cond do
      user_input < @rand_numb ->
        IO.puts("It's bigger than that. #{@rand_numb} Try again: ")
        guess()

      user_input > @rand_numb ->
        IO.puts("It smaller than that!#{@rand_numb} Try again: ")
        guess()

      user_input == @rand_numb ->
        IO.puts("You guessed it. #{@rand_numb} Hooray!!!!!")

      true ->
        IO.puts("_____________")
    end
  end
end
