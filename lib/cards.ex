defmodule Cards do

  def deck do
    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end
  end

  defp values do
    ["Ace", "Two", "Three", "Four", "Five"]
  end

  defp suits do
    ["Spades", "Clubs", "Hearts", "Diamonds"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end
