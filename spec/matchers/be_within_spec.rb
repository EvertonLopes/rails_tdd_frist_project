# Matcher be_within trabalha com numeros decimais.

describe 'Matchers be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) }
  it { expect([11.7, 11.9, 12.1, 12.3]).to all be_within(0.5).of(12.0) }
end

# usamos 12.5 be_within(0.5).of(12)
# ele verifica um range de cinco casas decimais para menos ou para mais
# exemplo: 12 pode variar entre 11.5 ate 12.5
