Given(/^Sign up.$/) do
  visit '/users/sign_up'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhpabc'
  fill_in "Password confirmation", :with => 'manhtmhpabc'
  click_button "Sign up"
  expect(page).to have_content("Nhật Ký Online")
end

When(/^I signout$/) do
  find_link('Đăng xuât').click
end

Given(/^Signin$/) do
  visit '/users/sign_in'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
end

When(/^I signin$/) do 
  click_button "Sign In"
end

When(/^I click link 'Chỉnh sửa thông tin'$/) do
  find_link('Chỉnh sửa thông tin').click
end

Then(/^I see my information$/) do
  expect(page).to have_content("Chỉnh sửa thông tin người dùng")
end

Then(/^I fill_in 'Mật khẩu mới' with 'abcdefgh'$/) do
  fill_in "user_password", :with => 'abcdefgh'
end

Then(/^I fill_in 'Nhập lại mật khẩu' with 'abcdefgh'$/) do
  fill_in "user_password_confirmation", :with => 'abcdefgh'
end

Then(/^I fill_in 'Mật khẩu hiện tại' with 'mantmhpabc'$/) do
  fill_in "user_current_password", :with => 'mantmhpabc'
end

Then(/^I click button 'Cập nhật'$/) do
  click_button "Cập nhật"
end

Then(/^I updated my information$/) do
  expect(page).to have_content("Nhật Ký Online")
end

Given(/^Sign up\.\.$/) do
  visit '/users/sign_up'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhpabc'
  fill_in "Password confirmation", :with => 'manhtmhpabc'
  click_button "Sign up"
  expect(page).to have_content("Nhật Ký Online")
end

When(/^I sign out\.\.$/) do
  find_link('Đăng xuât').click
end

Given(/^Sign in\.\.$/) do
  visit '/users/sign_in'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhpabc'
end

When(/^I sign in\.\.$/) do
  click_button "Sign In"
end

When(/^I click link 'Chỉnh sửa thông tin.'$/) do
  find_link('Chỉnh sửa thông tin').click
end

Then(/^I click button 'Xóa tài khoản của tôi'$/) do
  find_button('Xóa tài khoản của tôi!').click
end

Then(/^I deleted my account$/) do
  expect(page).to have_content("Nhật Ký Online")
end