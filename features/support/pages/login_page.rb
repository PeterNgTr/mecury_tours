class LoginPage
  include PageObject

  DEFAULT_USER ||= { username: '0000', password: '0000'}

  text_field(:user_name, name: 'userName')
  text_field(:password, name: 'password')
  button(:submit, name: 'login')

  page_url ('http://newtours.demoaut.com/mercurysignon.php')

  def loaded?
    user_name_element.visible?
  end

  def login(user_info={})
    user_info = DEFAULT_USER.merge(user_info)
    self.user_name =user_info.fetch(:username)
    self.password = user_info.fetch(:password)
    submit
  end

end
