RSpec.describe 'Aggregating Failures' do
  it { expect('foo bar bazz').to start_with('foo') }
  it { expect('foo bar bazz').to end_with('bazz') }

  it 'testing with failures without aggregate' do
    expect('foo bar bazz').to start_with('foo')
    expect('foo bar bazz').to end_with('bazz')
  end

  # it 'testing with failures', :aggregate_failures do
  #   aggregate_failures 'testing start and end' do
  #     expect('foo bar bazz').to start_with('foo')
  #     expect('foo bar bazz').to start_with('boo')
  #     expect('foo bar bazz').to start_with('bar')
  #     expect('foo bar bazz').to end_with('bazz')
  #   end
  # end

  # it 'testing with failures', :aggregate_failures do
  #   expect('foo bar bazz').to start_with('foo')
  #   expect('foo bar bazz').to start_with('boo')
  #   expect('foo bar bazz').to start_with('bar')
  #   expect('foo bar bazz').to end_with('bazz')
  # end

  # it 'testing with failures', aggregate_failures: true do
  #   expect('foo bar bazz').to start_with('foo')
  #   expect('foo bar bazz').to start_with('boo')
  #   expect('foo bar bazz').to start_with('bar')
  #   expect('foo bar bazz').to end_with('bazz')
  # end
end
