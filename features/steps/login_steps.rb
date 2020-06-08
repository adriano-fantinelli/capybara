Dado('que estou na página de login') do
  @app.login.load
end

Quando("eu faço login com {string} e {string}") do |email, password|
  @app.login.log_in(email, password)
end
                                                                         
Então("devo ver a mensagem de alerta {string}") do |expect_message|                 
  expect(@app.login.alert_message).to include expect_message
end             