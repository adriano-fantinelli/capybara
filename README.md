# capybara-selenium-automation
  Esse é um repositório com um exemplo de como realizar uma automação de testes para aplicações Web utilizando o selenium WebDriver e o framework Capybara na linguagem Ruby.

  Documentação Selenium: https://www.selenium.dev/documentation/en/getting_started/

  Documentação Capybara: https://www.rubydoc.info/github/jnicklas/capybara

# Configurar o Ambiente:
  1. Escolher uma IDE de Ruby, uma sugestão é o [Visual Studio Code](https://code.visualstudio.com/).
  2. Clonar o projeto usando esse comando no terminal
   ```
  git clone https://github.com/adriano-fantinelli/capybara-selenium-automation.git
  ```
  3. Instalar o bundler pelo terminal
  ```
  gem install bundler
  ```
  4. Instalar as dependencias do projeto
  ```
  bundle install
  ```
  5. Existir o arquivo [chromedriver](https://zwbetz.com/download-chromedriver-binary-and-add-to-your-path-for-automated-functional-testing/) em alguma pasta path

# Executar os testes:
Utilize esse comando no terminal, os testes devem começar
  ```
  cucumber -t @smoke  
  ```
## Tutorial no medium utilizando esse repositório:
https://medium.com/@adriano.fantinelli/automatizando-testes-de-aplica%C3%A7%C3%B5es-web-com-capybara-e-selenium-webdriver-8e630c7f6f03
