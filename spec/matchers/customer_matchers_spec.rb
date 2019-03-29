RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
  description do
    "be multiple of #{expected}"
  end
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
  failure_message_when_negated do |actual|
    "expected that #{actual} would not be a multiple of #{expected}"
  end
end

RSpec.describe 9 do
  context 'using Customer Matchers' do
    it { is_expected.to be_a_multiple_of(3) }
  end
end

RSpec.describe 9, ' - Customer Matchers' do
  it { is_expected.not_to be_a_multiple_of(4) }
end

RSpec.describe 9, ' - Customer Matchers' do
  it { is_expected.to_not be_a_multiple_of(3) }
end

RSpec.describe 9, ' - Customer Matchers' do
  it { is_expected.to be_a_multiple_of(4) }
end