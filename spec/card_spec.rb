# frozen_string_literal: true

require_relative '../lib/card.rb'

RSpec.describe 'Card class' do
  it 'includes the Comparable module' do
    expect(Card.included_modules.include?(Comparable)).to be true
  end

  it 'allows two instances of the Card class to be compared to each other' do
    card_one = Card.new(3, 'S')
    card_two = Card.new(5, 'S')
    card_three = Card.new(10, 'H')
    card_four = Card.new(10, 'D')
    card_five = Card.new(9, 'D')

    expect(card_one < card_two).to be true
    expect(card_three < card_one).to be true
    expect(card_five > card_four).to be false
    expect(card_three > card_four).to be true
  end
end
