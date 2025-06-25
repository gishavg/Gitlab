# frozen_string_literal: true

require_relative "../lib/string_calculator"

describe StringCalculator do
  describe "add" do
    it "return 0 for Input: “”" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'return the number for single input' do
      expect(StringCalculator.add("5")).to eq(5)
    end
  end
end
