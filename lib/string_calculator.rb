class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    delimiter, numbers = extract_delimiter_and_numbers(input)
    num_array = numbers.split(delimiter).map(&:to_i)

    negatives = num_array.select(&:negative?)
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    num_array.sum
  end

  private

  def self.extract_delimiter_and_numbers(input)
    delimiter = /,|\n/
    numbers = input

    if input.start_with?("//")
      if input.include?("\n")
        delimiter_line, numbers = input.split("\n", 2)
        delim_char = delimiter_line[2..-1]
        delimiter = Regexp.escape(delim_char)
        delimiter = Regexp.new(delimiter)
      else

        numbers = input
      end
    end

    [delimiter, numbers || ""]
  end
end
