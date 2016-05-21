Given(/^Sign up$/) do
  visit '/users/sign_up'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
  fill_in "Password confirmation", :with => 'manhtmhp123'
  click_button "Sign up"
  expect(page).to have_content("Nhật Ký Online")
end

When(/^I sign out$/) do
  find_link('Đăng xuât').click
end

Given(/^Sign in$/) do
  visit '/users/sign_in'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
end

When(/^I sign in$/) do 
  click_button "Sign In"
end

Then(/^I should see homepage$/) do
  expect(page).to have_content("Nhật Ký Online")
end



Then(/^The current user is empty$/) do
  find_link('Đăng xuât').click
  expect(page).to have_content("Đăng nhập")
end

When(/^I sign in with wrong user$/) do
  visit '/users/sign_in'
  fill_in "Email", :with => 'passsss@gmail.com'
  fill_in "Password", :with => 'manhdftmhp123'
  click_button "Sign In"
end

Then(/^I should see 'Invalid email or password.'$/) do
  expect(page).to have_content("Invalid email or password.")
end

When(/^I sign in and I check remember_me$/) do
  click_button "Sign In"
end