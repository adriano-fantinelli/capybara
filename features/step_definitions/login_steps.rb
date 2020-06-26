Dado('que estou na página de login') do  # Ele busca por alguma linha no(s) documento(s) .feature que possua o conteúdo dentro dos ''
  @app.login.load                        # Chama a page login, direciona para a URL selecionada e carrega os elementos da página
end

Quando("eu faço login com {string} e {string}") do |email, password| # Aqui está sendo passado dois parametros string que existe(m) no(s) documento(s) login.feature
  @app.login.login(email, password)     # Chama a page login e executar a função login passsando os parâmetros email e password
end
                                                                         
Então("devo ver a mensagem de alerta {string}") do |expect_message|                 
  expect(@app.login.alert_message).to include expect_message   # Valida se a mensagem do alert contém com a mensagem esperada
end             