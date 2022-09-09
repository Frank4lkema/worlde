defmodule Wordle do

  def random_word do
    words = ["voiceless	"	, "spoil"	, "burly", "balance", "unable", "slap", "encouraging"	, "unkempt"	, "memory"	, "clip"	, "alive"	, "rejoice"	, "history"	, "mountain"	, "floor"	, "overconfident"	, "hanging"	, "reward"	, "internal"	, "explode"	, "nonstop"	, "hover"	, "condition"	, "time"	, "obtainable"	, "front"	, "efficient"	, "absent"	, "grateful"	, "concern"	, "flawless"	, "nest"	, "phone"	, "ice"	, "tin"	, "momentous"	, "destruction"	, "chop"	, "short"	, "exciting"	, "shake"	, "fetch"	, "perpetual"	, "powerful", "grandiose"	, "guitar"	, "easy"	, "smash"	, "maid"	, "ajar"]
    random_word = Enum.random(words)
    random_word
  end

  def guess_wordletter(word, letter) do
    if String.contains?(word, letter) do
      IO.puts "You guessed correctly!"
    else
      IO.puts "You guessed incorrectly!"
    end
  end

end



guessed_word = IO.gets "Guess a letter: \n"


guessed_word |> String.trim |> S