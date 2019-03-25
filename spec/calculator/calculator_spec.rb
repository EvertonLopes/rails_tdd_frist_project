require 'calculator'

describe Calculator, '- Teste de Matemática' do
  context '# Use number integer: ' do
    specify 'method sum' do
      result = subject.sum(10, 7)
      expect(result).to eq(17)
    end

    specify 'method sub' do
      result = subject.sub(7, 6)
      expect(result).to eq(1)
    end

    example 'method div' do
      expect(subject.div(8, 2)).to eq(4)
    end

    xit 'method mult' do
      result = subject.mult(3, 7)
      expect(result).to eq(21)
    end
  end

  context '# Usando raise para erros' do
    it 'dividindo por zero' do
      expect { subject.div(8, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(8, 0) }.to raise_error('divided by 0')
      expect { subject.div(8, 0) }.to raise_error(ZeroDivisionError,
                                                  'divided by 0')
    end
  end
end

# expect { subject.div(8, 0) }.to raise_exception - gera um aviso!
# expect { subject.div(8, 0) }.to raise_error(/divided/)

# subject implicito
#   result = subject.sum(x, y) # Nao precisa instanciar a classe.

# subject explicito
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
