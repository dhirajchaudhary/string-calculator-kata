class StringCalculator
  def self.add(numbers)
    return 0 if input.empty?

    delimiter = /,|\n/
    numbers = input

    if input.start_with?("//")
      delimiter_line, numbers = input.split("\n", 2)
      delimiter_char = delimiter_line[2..]
      delimiter = Regexp.escape(delimiter_char)
      delimiter = Regexp.new(delimiter)
    end

    nums = numbers.split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    nums.sum
  end
end
