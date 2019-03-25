describe 'Matchers de Igualdade' do
  it '#equal - Testa o objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    # expect(x).to equal(y) # Error
  end

  it '#be - Testa o objeto' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    # expect(x).to be(y) # Error
  end

  it '#eql - Testa o valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
    # expect(x).not_to eql(y) # Error
  end

  it '#eq - Testa o valor' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
    # expect(x).not_to eq(y) # Error
  end
end
