describe (1..5), 'Matchers Ranges: ' do
  it 'Cover' do
    is_expected.to cover(2, 3) # Substituimos o expect(subject) por is_expected
    expect(subject).to cover(2, 3)
    expect(subject).not_to cover(0, 6)
  end

  it { is_expected.to cover(2) }
  it { is_expected.to cover(4, 3) }
  it { is_expected.not_to cover(6, 0) }
end
