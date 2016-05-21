Feature: Fix Information
As a user
I want to fix my information
So I can update my information

Scenario: User fix their information
  Given Signup
  When I signout
  Given Signin
  When I signin
  And I click link 'Chỉnh sửa thông tin'
  Then I see my information
  And I fill_in 'Mật khẩu mới' with 'abcdefgh'
  And I fill_in 'Nhập lại mật khẩu' with 'abcdefgh'
  And I fill_in 'Mật khẩu hiện tại' with 'mantmhpabc'
  And I click button 'Cập nhật'
  Then I updated my information
  
Scenario: User delete their account
  Given Sign up..
  When I sign out..
  Given Sign in..
  When I sign in..
  And I click link 'Chỉnh sửa thông tin.'
  Then I see my information
  And I click button 'Xóa tài khoản của tôi'
  Then I deleted my account