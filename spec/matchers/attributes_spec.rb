require 'pessoa'

RSpec.describe 'Matcher of Attributes: ' do
  # before(:each) do
  #   puts 'Starting test'
  #   @pessoa = Pessoa.new
  # end

  # after(:example) do
  #   @pessoa.name = 'Witouth name!'
  #   puts "finish test, name: '#{@pessoa.name}'"
  # end

  around(:each) do |teste|
    puts 'Starting test'
    @pessoa = Pessoa.new
    teste.run
    @pessoa.name = 'Witouth name!'
    puts "finish test, name: '#{@pessoa.name}'"
  end

  it 'have_attributes' do
    @pessoa.name = 'Everton'
    @pessoa.age = 32
    expect(@pessoa).to have_attributes(name: 'Everton', age: 32)
  end

  it 'starting_with and be' do
    @pessoa.name = 'Ronaldo F.'
    @pessoa.age = 45
    expect(@pessoa).to have_attributes(
      name: starting_with('R'), # a_string_starting_with
      age: (a_value >= 30) # a_value
    )
  end
end
