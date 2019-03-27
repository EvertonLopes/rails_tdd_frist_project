describe 'Matchers de Comparação ' do
  it 'Maior: >, Maior igual: >=' do
    expect(5).to be > 1
    expect(5).to be >= 5
  end

  it 'Menor: <, Menor igual: <=' do
    expect(5).to be < 10
    expect(5).to be <= 5
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2, 7).inclusive # Entre esses numeros
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive # Dentro do intervalo desses numeros
  end

  it 'match' do
    expect('fulano@com.br').to match(/..@../) # Expressoes Regulares (Strings)
    # expect(125896).to match(/..8../) # Error
  end

  it 'start_with' do
    expect('fulano@com.br').to start_with('fulano') # Strings
    expect([1, 2, 3]).to start_with(1) # Array
  end

  it 'end_with' do
    expect('fulano@com.br').to end_with('br') # Strings
    expect([1, 2, 3]).to end_with(3) # Array
  end
end
