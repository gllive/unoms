Given /^进入"登录页面"/ do
  @browser.goto("http://192.168.13.54:8088")
end

When /^输入用户名 "([^\"]*)"$/ do|username|
  @browser.text_field(id: "login_username").set(username)
end
And /^输入密码 "([^\"]*)"$/ do |password|
  @browser.text_field(id: "login_password").set(password)
end
And /^点击 登录按钮/ do
  @browser.link(id: "login").click
  sleep 5
end
And /^点击注销按钮/ do
  @browser.span(id:"logout_img").click
end
And /^点击YES按钮/ do
  @browser.div(id:"w2ui-popup").button(id:"Yes").click
end
And /^点击NO按钮/ do
  @browser.div(id:"w2ui-popup").button(id:"No").click
end

Then /^成功注销看到"([^\"]*)"$/ do |expected|
  @browser.text.should include expected
end

Then /^看到"([^\"]*)"$/ do |expected|
    @browser.text.should include expected
end
