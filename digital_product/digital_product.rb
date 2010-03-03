#!/usr/bin/env ruby

# Digital Product
# Computes the product of the digits of a number

# USAGE: Invoke this file with a list of numbers on STDIN, each number
# separated by a newline.
# For example:
# `ruby digital_product.rb < sample_data.txt`


class DigitalProduct
  def initialize(n)
    
  end

  def product(digits)
    non_zero_digits = digits.reject{ |x| x == 0 }
    non_zero_digits.inject(1) { |x,y| x * y }
  end

  def self.number_to_digits(n, current_digits=[])
    # 0 is a special case - return [0]
    if n == 0 && current_digits == []
      [0]
    elsif n > 0
      number_to_digits((n / 10), [n % 10] + current_digits)
    else
      current_digits            # Tail recursion would be nice here...
    end
  end
end

if __FILE__ == $0
  ARGF.each_line do |number_as_string|
    puts DigitalProduct.new(number_as_string.to_i).as_pretty_output
  end
end
