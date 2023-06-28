# encoding: utf-8

class LoginPage < SitePrism::Page
  path = '/login'
  set_url(ENV['BASE_URL'] + path)

  element :username_field, :xpath, "//input[@id='userName']"
  element :password_field, :xpath, "//input[@type='password']"

  def input_username(username)
    wait_until_username_field_visible(wait: 2)
    username_field.set(username)
    sleep 1
  end

  def input_password(password)
    wait_until_password_field_visible(wait: 2)
    password_field.set(password)
    sleep 2
  end

end
