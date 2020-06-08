class Home < SitePrism::Page
  element :message, '#center_column > h1'

  def logged_user
    message.text
  end

end
