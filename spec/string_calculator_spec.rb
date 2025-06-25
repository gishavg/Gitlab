# frozen_string_literal: true

require_relative "../lib/string_calculator"

describe StringCalculator do
  describe "add" do
    it "return 0 for Input: “”" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "return the number for single input" do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns sum of two numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "handles any amount of numbers" do
      expect(StringCalculator.add("1,2,3,4,5,6")).to eq(21)
    end

    it "handles newlines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
