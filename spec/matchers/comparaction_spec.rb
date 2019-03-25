describe 'Matchers de Comparação ' do
  it 'Maior: >' do
    expect(5).to be > 1
  end

  it 'Maior igual: >=' do
    expect(5).to be >= 5
  end

  it 'Menor: <' do
    expect(5).to be < 10
  end

  it 'Menor igual: <=' do
    expect(5).to be <= 5
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2,7).inclusive # Entre esses números.
    expect(2).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2,7).exclusive # Dentro do intervalo desses números.
    expect(3).to be_between(2,7).exclusive
    expect(6).to be_between(2,7).exclusive
  end

  it 'match' do
    expect('fulano@com.br').to match(/..@../) # Expressões Regulares.
    expect('125896').to match(/..8../) # Somente com String.
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