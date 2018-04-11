Given /^进入 "登录页面"/ do
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

When /^点击上传按钮/ do
   @browser.div(id: "node_menu_license").click
end
And /^上传1.adoc文件/ do
  @browser.iframe(index:1).file_field(class: "file-input").set("/home/guolei/notes/1.adoc")
end
And /^点击保存按钮/ do
  @browser.iframe(index:1).button(name: "save").click
end

Then /^看到弹窗"([^\"]*)"$/ do |expected|
  @browser.iframe(index:1).div(id: "w2ui-message0").text.should include expected
end
