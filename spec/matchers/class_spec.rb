require 'calculator'

describe 'Matchers de Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a Classe

    calc = Calculator.new
    expect(calc).to be_a(Calculator)
  end

  it 'be_kind_of' do
    calc = Calculator.new
    expect(10).to be_kind_of(Integer)
    expect(calc).to be_kind_of(Calculator) # Pode ser por herança
  end

  it 'be_a' do
    str = 'String'
    calc = Calculator.new
    expect(10).to be_a(Integer)
    expect(str).to be_a(String)
    expect(calc).to be_a(Calculator)
  end

  it 'be_an' do
    str = 'String'
    calc = Calculator.new
    expect(10).to be_an(Integer)
    expect(str).to be_an(String)
    expect(calc).to be_an(Calculator)
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end
end