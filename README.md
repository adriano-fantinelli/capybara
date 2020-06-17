# capybara-selenium-automation
  Esse é um repositório com um exemplo de como realizar uma automação de testes para aplicações Web utilizando o selenium WebDriver e o framework Capybara na linguagem Ruby.

  Documentação Selenium: https://www.selenium.dev/documentation/en/getting_started/

  Documentação Capybara: https://www.rubydoc.info/github/jnicklas/capybara

# Configurar o Ambiente
  1. Escolher uma IDE de Ruby, uma sugestão é o [Visual Studio Code](https://code.visualstudio.com/).
  2. Instalar o [Ruby](https://rubyinstaller.org/downloads/)
  3. Instalar o bundler pelo terminal
  ```
  gem install bundler
  ```
  4. Instalar as dependências do projeto
  ```
  bundle install
  ```
  5. Existir o arquivo [chromedriver](https://zwbetz.com/download-chromedriver-binary-and-add-to-your-path-for-automated-functional-testing/) em alguma pasta path

# Executar os testes 
É necessário clonar o repositório para executar os testes, depois de reiniciar a IDE utilize esse comando no terminal, os testes devem começar
  ```
  cucumber -t @smoke  
  ```
