require 'calculator'

describe 'Matchers de Classes' do
  calc = Calculator.new
  str = 'String'

  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a Classe
    expect(calc).to be_a(Calculator)
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer)
    expect(calc).to be_kind_of(Calculator) # Pode ser por heranca
  end

  it 'be_a' do
    expect(10).to be_a(Integer)
    expect(str).to be_a(String)
    expect(calc).to be_a(Calculator)
  end

  it 'be_an' do
    expect(10).to be_an(Integer)
    expect(str).to be_an(String)
    expect(calc).to be_an(Calculator)
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end
end
