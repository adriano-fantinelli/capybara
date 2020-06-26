class Login < SitePrism::Page         # Está herdando os métodos de SitePrism::Page
  set_url '/'                         # O usuário está sendo direcionado para a URL passada no documento env.rb (Vou explicar melhor quando falar desse documento)   
  element :input_email, '#email'      # Encontrando o elemento de input de email
  element :input_password, '#passwd'  # Encontrando o elemento de input de password
  element :alert, '#center_column > div.alert.alert-danger > ol > li'

  def login(email, password)  # Método que faz login passando as variáveis email e password
    input_email.send_keys(email)  # Escreve no input email o que for passado na váriavel email
    input_password.send_keys(password) # Escreve no input password o que for passado na váriavel password
    click_button "Sign in" # Seleciona o botão com o texto 'Sign in'
  end

  def alert_message 
    alert.text   # Retorna o texto do elemento alert para fazer uma comparação
  end

end
