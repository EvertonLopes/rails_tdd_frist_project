require 'calculator'

describe Calculator do
  context '#use number integer: ' do
    specify 'method sum' do
      result = subject.sum(10, 7)
      expect(result).to eq(17)
    end

    specify 'method sub' do
      result = subject.sub(7, 6)
      expect(result).to eq(1)
    end

    example 'method div' do
      result = subject.div(15, 3)
      expect(result).to eq(5)
    end

    it 'method mult' do
      result = subject.mult(3, 7)
      expect(result).to eq(21)
    end

    it 'without content'
  end
end

# context '#use number integer: ' do
#   specify 'method sum' do
#     result = subject.sum(10, 7) #Podemos trocar calc por subject
#     expect(result).to eq(17)
#   end
# end