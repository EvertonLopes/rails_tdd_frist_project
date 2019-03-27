describe 'Matcher All: ' do
  it { expect([1, 9, 17]).to all (be_odd).and be_an(Integer) }
  it { expect(['ruby', 'rails']).to all be_a(String).and include('r') }
end