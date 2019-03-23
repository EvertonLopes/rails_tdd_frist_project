[ Projeto simples com TDD (Test Driven Development) ]
  - Projeto sendo acompanhando pelo curso do Jackson Pires - TDDcom Ruby on Rails, RSpec e Capybara.

Um teste do padrão xUnit tem quatro fases, são elas:
  - Setup: Quando você coloca o SUT (system under test, o objeto sendo testado) no estado necessário para o teste;
  - Exercise: Quando você interage com o SUT;
  - Verify: Quando você verifica o comportamento esperado;
  - Teardown: Quando você coloca o sistema no estado em que ele estava antes do teste ser executado.

Incialização do projeto
  Executar o comando no terminal: gem install rspec,
  Crie um diretório para armazenar o projeto,
  Vá para dentro do diretório crie o arquivo Gemfile
  Abra o arquivo Gemfile e digite o seguinte código {
    source 'https://rubygems.org'

    gem 'rspec', '~> 3.8'
  },
  Ainda dentro de diretório digite o seguinte comando: gem install bundle,
  Logo após ser executado o comando acima, digite: bundle install,
  Agora vamos iniciar o rspec no projeto, digite: rspec --init - Esse comando irá criar uma pasta e um arquivo.
  Cria um diretório nomeado com: lib.
  
  Com esses passos você já pode iniciar seu aprendizado com RSpec, boa sorte!
