$counts = 0

RSpec.describe 'Hook Let!' do
  invocation_order = []

  puts "1º - inv[0]: #{invocation_order[0]}, count: #{$counts}"

  let!(:counts) do
    invocation_order << :let!
    $counts += 1
  end
  
  it 'calls the helper method in a before hook' do
    puts "1º - inv[0]: #{invocation_order[0]}, inv[1]: #{invocation_order[1]}, count: #{$counts}"
    invocation_order << :example
    expect(invocation_order).to eq([:let!, :example])
    expect(counts).to eq(1)
    puts "3º - inv[0]: #{invocation_order[0]}, inv[1]: #{invocation_order[1]}, count: #{$counts}"
  end
end
