RSpec.describe 'Hook Let!' do
  main_count = 0
  invocation_order = []

  puts "1º - inv[0]: #{invocation_order[0]}, count: #{main_count}"

  let!(:count) do
    invocation_order << :let!
    main_count += 1
  end

  it 'calls the helper method in a before hook' do
    puts "1º - inv[0]: #{invocation_order[0]},
            inv[1]: #{invocation_order[1]},
            count: #{count}"
    invocation_order << :example
    expect(invocation_order).to eq(%i[let! example])
    expect(count).to eq(1)
    puts "3º - inv[0]: #{invocation_order[0]},
            inv[1]: #{invocation_order[1]},
            count: #{count}"
  end
end
