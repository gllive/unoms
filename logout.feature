Feature: 注销
  点击注销按钮
  弹出选择页面
  点击确定按钮
  成功注销

Background:
  Given 进入"登录页面"

Scenario: 点击YES按钮

When 输入用户名 "root"
  And 输入密码 "123456"
  And 点击 登录按钮
  And 点击注销按钮
  And 点击YES按钮

Then 成功注销看到"Copyright"

Scenario: 点击NO按钮

When 输入用户名 "root"
  And 输入密码 "123456"
  And 点击 登录按钮
  And 点击注销按钮
  And 点击NO按钮

Then 看到"root"
