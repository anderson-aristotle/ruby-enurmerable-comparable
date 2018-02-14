# frozen_string_literal: true

require_relative '../lib/deck.rb'

RSpec.describe 'Deck class' do
  it 'includes the Enumerable module' do
    expect(Deck.included_modules.include?(Enumerable)).to be true
  end
end
