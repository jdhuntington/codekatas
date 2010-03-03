# RSpec is required to run these specs
# usage: `spec --color digital_product_spec.rb`

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

  describe '#product' do
    before(:each) do
      @dp = DigitalProduct.new(999)
    end
    
    it 'should return the product of the digits' do
      @dp.product([1,2,3]).should == 6
    end

    it 'should not use zeroes in the equation' do
      @dp.product([0,1,0,2,0,3,0]).should == 6
    end

    it 'should return 2016 for [3,4,2,7,6,1,2]' do
      @dp.product([3,4,2,7,6,1,2]).should == 2016
    end
  end

  describe '#initialize' do
    it 'should raise an exception if 0 is passed'
  end
end
