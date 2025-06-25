class StringCalculator
  def self.add(numbers)
    0 if numbers.strip.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      custom_delimiter, numbers = numbers.split("\n")
      delimiter = Regexp.escape(custom_delimiter[2])
    end

    number_list = numbers.split(delimiter).map(&:to_i)
    negative_numbers = number_list.select { |n| n < 0 }

    unless negative_numbers.empty?
      raise ArgumentError.new("negative numbers not allowed: #{negative_numbers.join(',')}")
    end
    number_list.sum
  end
end
