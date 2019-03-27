describe Array.new([1, 2, 3]), 'Matchers com Array' do
  it 'uses: include' do
    expect(subject).to include(2)
    expect(subject).to include(1, 2)
  end

  it 'uses: match_array' do
    expect(subject).to match_array([1, 2, 3]) # elementos exatos com chave "[]"
  end

  it 'uses: contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3) # elementos exatos sem chave
  end
end

# include
# match_array
# contain_exactly
