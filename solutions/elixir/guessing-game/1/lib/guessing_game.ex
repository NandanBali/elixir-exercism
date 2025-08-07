defmodule GuessingGame do
  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
    # Please implement the compare/2 function
  end
  def compare(secret_number, guess) when abs(secret_number - guess) == 1 do
    "So close"
  end
  def compare(secret_number, guess) when guess == :no_guess do
    "Make a guess"
  end
  def compare(secret_number, guess) when guess > secret_number do
    "Too high"
  end
  def compare(secret_number, guess) when secret_number > guess do 
    "Too low"
  end
  def compare(secret_number) do
    "Make a guess"
  end
end
