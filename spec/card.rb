# frozen_string_literal: true

require_relative '../lib/card.rb'

RSpec.describe 'Card class' do
  it 'includes the Comparable module' do
    expect(Card.included_modules.include?(Comparable)).to be true
  end
end
