RSpec.describe 'Test Doubles' do
  it 'tests using doubles for user' do
    user = double('User')
    allow(user).to receive_messages(name: 'Everton', pass: 'secrets')
    puts user.name
    puts user.pass
  end

  it 'tests using doubles for user' do
    user = double('User')
    allow(user).to receive(:name).and_return('Everton')
    allow(user).to receive(:pass).and_return('secrets')
    puts user.name
    puts user.pass
  end
end
