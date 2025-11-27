# String Calculator Kata – Incubyte TDD Assessment

**Candidate:** Dhiraj Chaudhary
**Repository:** https://github.com/dhirajchaudhary/string-calculator-kata
**Language:** Ruby + RSpec

Implemented using strict Test-Driven Development.
All kata requirements are fully satisfied with clean, readable code.

## How to Run & Verify

### 1. Setup & Execution
```bash
git clone https://github.com/dhirajchaudhary/string-calculator-kata.git
cd string_calculator_kata
bundle install

bundle exec rspec

irb -r ./lib/string_calculator

StringCalculator.add("")                    # => 0
StringCalculator.add("1")                   # => 1
StringCalculator.add("1,5")                 # => 6
StringCalculator.add("1,2,3,4,5")           # => 15
StringCalculator.add("1\n2,3")              # => 6
StringCalculator.add("1\n2\n3")              # => 6
StringCalculator.add("//;\n1;2")            # => 3
StringCalculator.add("//|\n1|2|3")          # => 6
StringCalculator.add("//***\n10***20***30") # => 60
