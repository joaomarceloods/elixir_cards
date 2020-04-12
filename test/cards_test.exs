defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates 20 cards" do
    assert Cards.create_deck() |> length() == 20
  end

  test "contains?" do
    assert Cards.create_deck() |> Cards.contains?("Ace of Spades") == true
  end
end
