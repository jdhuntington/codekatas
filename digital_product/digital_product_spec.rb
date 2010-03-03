# RSpec is required to run these specs
# usage: `spec digital_product_spec.rb`

require 'rubygems'
require 'spec'
require 'digital_product'

describe DigitalProduct do
  describe '.number_to_digits' do
    it 'should return an array containing 0 given the number 0' do
      DigitalProduct.number_to_digits(0).should == [0]
    end

    it 'should return an array containing 1 and 0 given the number 10' do
      DigitalProduct.number_to_digits(10).should == [1,0]
    end

    it 'should return an array containing 1, 7, 5, 0, and 3 given the number 17503' do
      DigitalProduct.number_to_digits(17503).should == [1,7,5,0,3]
    end
  end
end
