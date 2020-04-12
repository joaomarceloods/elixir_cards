defmodule Cards do

  def deck do
    for value <- values(), suit <- suits() do
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

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} ->
        :erlang.binary_to_term(binary)
      {:error, description} ->
        "That file does not exist (#{description})"
    end
  end

end
