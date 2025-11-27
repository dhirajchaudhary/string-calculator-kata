class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    
    delimiter = /,|\n/
    numbers.split(delimiter).sum(&:to_i)
  end
end
