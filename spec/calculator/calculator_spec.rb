require 'calculator'

describe Calculator, "- Teste de Matemática" do
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
      expect(subject.div(15, 3)).to eq(5)
    end

    xit 'method mult' do
      result = subject.mult(3, 7)
      expect(result).to eq(21)
    end
  end
end

# subject implícito
#   result = subject.sum(x, y) # Não precisa instânciar a classe.

# subject explícito
#   subject(:variavel) { described_class.new() } # Demostro a chamada da classe.
#   result = variavel.sum(x, y)

# Before
# context '#use number integer: ' do
#   specify 'method sum' do
#     cal = Calculator.new()
#     result = calc.sum(10, 7) #Podemos trocar calc por subject
#     expect(result).to eq(17)
#   end
# end

# After
# context '#use number integer: ' do
#   specify 'method sum' do
#     result = subject.sum(10, 7) #Podemos trocar calc por subject
#     expect(result).to eq(17)
#   end
# end