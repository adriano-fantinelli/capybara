class Login < SitePrism::Page
  set_url '/'
  element :input_email, '#email'
  element :input_password, '#passwd'
  element :alert, '#center_column > div.alert.alert-danger > ol > li'

  def log_in(email, password)
    input_email.send_keys(email)
    input_password.send_keys(password)
    click_button "Sign in"
  end

  def get_token
      2.times do
        js_script = 'return window.localStorage._vvtoken'
        @token = page.execute_script(js_script)
        break if @token != nil
        sleep 1
      end
    @token
  end

  def alert_message
    alert.text
  end

end
