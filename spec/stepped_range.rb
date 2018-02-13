# frozen_string_literal: true

require_relative '../lib/stepped_range.rb'

RSpec.describe 'SteppedRange class' do
  it 'includes the Enumerable module' do
    expect(SteppedRange.included_modules.include?(Enumerable)).to be true
  end

  it "has an 'each' method defined" do
    expect(SteppedRange.method_defined?(:each)).to be true
  end
end
