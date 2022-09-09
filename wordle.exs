defmodule Wordle do

  def random_word do
    words = ["voiceless	"	, "spoil"	, "burly", "balance", "unable", "slap", "encouraging"	, "unkempt"	, "memory"	, "clip"	, "alive"	, "rejoice"	, "history"	, "mountain"	, "floor"	, "overconfident"	, "hanging"	, "reward"	, "internal"	, "explode"	, "nonstop"	, "hover"	, "condition"	, "time"	, "obtainable"	, "front"	, "efficient"	, "absent"	, "grateful"	, "concern"	, "flawless"	, "nest"	, "phone"	, "ice"	, "tin"	, "momentous"	, "destruction"	, "chop"	, "short"	, "exciting"	, "shake"	, "fetch"	, "perpetual"	, "powerful", "grandiose"	, "guitar"	, "easy"	, "smash"	, "maid"	, "ajar"]

    random_word = Enum.random(words)
    random_word
  end

  def guess_word(guess, word) do
    if String.contains?(guess, word) do
      IO.puts "You guessed correctly!"
    else
      IO.puts "You guessed incorrectly!"
      check_letters(guess, word)
      collect_and_check_word(word)
    end
  end

  def collect_and_check_word(word) do
    IO.puts "Guess the word!"
    guess = IO.gets ">"
    guess_word(guess, word)
  end

  def check_letters(guess, word) do
    guess_list = String.split(guess, "",trim: true)
    word_list = String.split(word, "",trim: true)

    Enum.each(guess_list, fn letter ->
      if letter in word_list do
        IO.puts "You guessed #{letter} correctly!"
      end
    end)
  end


  def play do
     word = random_word()
      IO.puts "Guess the word!"
      guess = IO.gets ">"
      guess_word(guess, word)
    end
end

Wordle.play









