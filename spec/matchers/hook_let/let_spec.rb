$count = 0

RSpec.describe 'Hook Let' do
  let(:count) { $count += 1 }

  it 'memoizes the value' do
    expect(count).to eq(1)
    puts "1º - count: #{count}"
    expect(count).to eq(1)
    puts "2º - count: #{count}"
  end

  it 'is not cached across examples' do
    expect(count).to eq(2)
    puts "3º - count: #{count}"
  end
end