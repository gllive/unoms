Given /^visit "登录页面"/ do
  @browser.goto("http://192.168.13.54:8088")
end


When /^input username "([^\"]*)"$/ do |username|
  @browser.text_field(id: "login_username").set(username)
end

When /^input password "([^\"]*)"$/ do |password|
  @browser.text_field(id: "login_password").set(password)
end

When /^I click "login" button$/ do
  @browser.link(id: "login").click
end

  Then /^I should div$/ do
    @browser.div(:class => "w2ui-centered").click
  end

  And /^I can see "([^\"]*)"$/ do |expected|
    @browser.text.should include expected
  end
