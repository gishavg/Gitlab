class StringCalculator
  def self.add(numbers)
    0 if numbers.strip.empty?

    num = numbers.split(",").map(&:to_i)

    num.sum
  end
end
