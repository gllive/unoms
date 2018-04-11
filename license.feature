Feature: 上传文件

Background:
  Given 进入 "登录页面"
      And  输入用户名 "root"
      And  输入密码 "123456"
      And  点击 登录按钮




  Scenario: 上传错误格式的文件

  When 点击上传按钮
   And 上传1.adoc文件
   And 点击保存按钮
  Then  看到弹窗"Malform license file"
