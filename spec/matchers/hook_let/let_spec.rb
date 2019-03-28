RSpec.describe 'Hook Let' do
  main_count = 0
  let(:count) { main_count += 1 }

  it 'memoizes the value' do
    expect(count).to eq(1)
    puts "1º - Count: #{count}"
    expect(count).to eq(1)
    puts "2º - Count: #{count}"
  end

  it 'is not cached across examples' do
    expect(count).to eq(2)
    puts "3º - Count: #{count}"
  end
end
