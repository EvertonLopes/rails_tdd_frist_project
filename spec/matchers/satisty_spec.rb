describe 'Matcher Satisfy: ' do
  it {
    expect(9).to satisfy('be a multiple of 3: ') do |x|
      (x % 3).zero?
    end
  }

  # Valido, porem Rubocop nao aceita
  # it { expect(10).to satisfy { |x| (x % 2).zero? } }
end
