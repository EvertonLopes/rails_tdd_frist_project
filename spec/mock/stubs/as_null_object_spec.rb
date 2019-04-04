RSpec.describe 'Stubs' do
  it 'As Null Object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Everton')
    allow(user).to receive(:pass).and_return('secrets')
    puts user.name
    puts user.pass
    user.abc
  end
end