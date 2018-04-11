Feature: 添加用户

Scenario: 添加用户并用新增用户登录
    Given 进入  "登录页面"
      And  输入用户名 "root"
      And  输入密码 "123456"
      And  点击 登录按钮

  When 点击user菜单
   And 点击And new按钮
   And 输入用户名"guo"
   And 输入密码"123456"
   And 输入确认密码"123456"
   And 输入邮箱"123456@qq.com"
   And 点击管理员按钮
  Then 点击保存按钮
