RSpec::Matchers.define_negated_matcher :an_array_excluding, :include

RSpec.describe 'Matchers Negated' do
  let(:list) { 1.upto(10).to_a }

  it 'can be used in a composed matcher expression' do
    expect { list.delete(5) }.to change { list }.to(an_array_excluding(5))
  end

  # it 'provides a good failure message based on the name' do
  #   # deliberete failure
  #   expect { list.delete(1) }.to change { list }.to(an_array_excluding 5)
  # end
end
