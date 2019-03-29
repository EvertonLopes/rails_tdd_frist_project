RSpec.describe 'Command line - Tag Filter', :par_impar do
  it 'be true' do
    expect(1.odd?).to be true
  end

  it 'be false', :slow do
    expect(1.odd?).not_to be false
  end

  it 'be false' do
    expect(1.odd?).not_to be false
  end
end