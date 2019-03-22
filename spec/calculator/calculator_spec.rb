require 'calculator'

RSpec.describe Calculator do
  specify 'sum method for two numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  example 'sum method for two numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  it 'sum method for two numbers with number negative.' do
    calc = Calculator.new
    result = calc.sum(-5, 7)
    expect(result).to eq(2)
  end

end
