require 'pessoa'

describe 'Classe Pessoa: ' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.name = 'Everton'
    pessoa.age = 32
    expect(pessoa).to have_attributes(name: 'Everton', age: 32)
  end

  it 'starting_with and be' do
    pessoa = Pessoa.new
    pessoa.name = 'Ronaldo F.'
    pessoa.age = 45
    expect(pessoa).to have_attributes(
      name: starting_with('R'), # a_string_starting_with
      age: (be >= 30) # a_value
    )
  end


end