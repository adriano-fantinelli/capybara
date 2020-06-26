class Home < SitePrism::Page
  element :message, '#center_column > h1'

  def logged_user
    message.text  # Retorna o texto do elemento message para fazer uma comparação
  end

end
