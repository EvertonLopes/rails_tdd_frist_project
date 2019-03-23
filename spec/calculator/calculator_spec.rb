require 'calculator'

describe Calculator do

  subject(:calc) { described_class.new() }

  context '#use number integer: ' do
    specify 'method sum' do
      result = calc.sum(10, 7)
      expect(result).to eq(17)
    end

    specify 'method sub' do
      result = calc.sub(7, 6)
      expect(result).to eq(1)
    end

    example 'method div' do
      result = calc.div(15, 3)
      expect(result).to eq(5)
    end

    it 'method mult' do
      result = calc.mult(3, 7)
      expect(result).to eq(21)
    end
  end
end

# context '#use number integer: ' do
#   specify 'method sum' do
#     result = subject.sum(10, 7) #Podemos trocar calc por subject
#     expect(result).to eq(17)
#   end
# end