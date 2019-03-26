describe (1..5), 'Matchers Ranges: ' do
  it 'Cover' do
    expect(subject).to cover(2,3)
    expect(subject).not_to cover(0,6)
  end
end