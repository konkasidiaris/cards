defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 52 cards" do
    deck_length = length(Cards.create_deck())
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    shuffled_deck = Cards.shuffle(deck)
    refute deck == shuffled_deck
    assert length(deck) == length(shuffled_deck)
  end
end
