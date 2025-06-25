class StringCalculator
  def self.add(numbers)
    0 if numbers.strip.empty?

    delimiter = /,|\n/
    number_list = numbers.split(delimiter).map(&:to_i)
    number_list.sum
  end
end
