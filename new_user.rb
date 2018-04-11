Given /^进入  "登录页面"/ do
  @browser.goto("http://192.168.13.54:8088")
end

And /^输入用户名 "([^\"]*)"$/ do|username|
  @browser.text_field(id: "login_username").set(username)
end
And /^输入密码 "([^\"]*)"$/ do |password|
  @browser.text_field(id: "login_password").set(password)
end
And /^点击 登录按钮/ do
  @browser.link(id: "login").click
  sleep 5
end

When /^点击user菜单/ do
  @browser.div(id: "node_menu_user").click
end
And /^点击And new按钮/ do
  @browser.iframe(index:1).table(class: "w2ui-button",index:3).click
end
And /^输入用户名"([^\"]*)"$/ do |username|
  @browser.iframe(index:1).text_field(name: "username").set(username)
end
And /^输入密码"([^\"]*)"$/ do |password|
  @browser.iframe(index:1).text_field(name: "password").set(password)
end
And /^输入确认密码"([^\"]*)"$/ do |retype_password|
  @browser.iframe(index:1).text_field(name: "__retype__password").set(retype_password
)
end
And /^输入邮箱"([^\"]*)"$/ do |email|
  @browser.iframe(index:1).text_field(name: "email").set(email)
end
And /^点击管理员按钮/ do
  @browser.iframe(index:1).checkbox(name: "administrator").click
end

Then /^点击保存按钮/ do
  @browser.iframe(index:1).button(name: "save").click
end
