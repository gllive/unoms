Feature: 登录
  In order to use the system
  as a user
  I want to login

Scenario: Signing in with correct credentials
  Given visit "登录页面"
  When input username "root"
  And input password "123456"
  And I click "login" button
  Then I should see "root"



Scenario: User tries to sign in with incorrest password
  Given visit "登录页面"
  When input username "zxcv"
  And input password "654123"
  And I click "login" button
  Then I should div
  And I can see "Invalid username or password"
