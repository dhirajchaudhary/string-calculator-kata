# spec/string_calculator_spec.rb
require 'string_calculator'

describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "handles any amount of numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "allows newlines as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("1\n2\n3")).to eq(6)
    end

    it "supports custom delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//|\n1|2|3")).to eq(6)
    end

    it "throws exception for negative numbers" do
      expect { StringCalculator.add("-1,2") }.to raise_error("negative numbers not allowed -1")
    end
    
    it "shows all negative numbers in exception" do
      expect { StringCalculator.add("1,-2,3,-4") }
        .to raise_error("negative numbers not allowed -2,-4")
    end
  end
end
