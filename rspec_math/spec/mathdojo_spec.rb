require 'rails_helper'
require 'MathDojo'

describe MathDojo do
  it 'adds' do
    expect(MathDojo.new.add(3,8).result).to eq(11)
  end
  it 'adds arrays' do
    expect(MathDojo.new.add([1,3,5,9]).result).to eq(18)
  end
  it 'subtracts' do
    expect(MathDojo.new.subtract(3,4).result).to eq(-7)
  end
  it 'subtracts arrays' do
    expect(MathDojo.new.subtract([2,5]).result).to eq(-7)
  end
  it 'multiplies by number' do
    expect(MathDojo.new.add(5).multiply_by_the_sum([3,5,7], 3).result).to eq(5)
  end
  it 'reset result to 1 on reset then do the rest' do
    expect(MathDojo.new.add(5).subtract(3,5).reset.add(3).result).to eq(4)
  end
end