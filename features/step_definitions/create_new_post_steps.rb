Given (/^User was logged in$/) do 
  visit '/users/sign_up'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
  fill_in "Password confirmation", :with => 'manhtmhp123'
  click_button "Sign up"
  expect(page).to have_content("Nhật Ký Online")
end

When(/^User clicks  'Tạo nhật ký mới'$/) do
  find_link('Tạo nhật ký mới').click
end

Then(/^User should see a page with title 'Tiêu đề', body 'Nội dung nhật ký', date 'Ngày' , button 'Tạo nhật ký'$/) do
  expect(page).to have_content("Nhật kí mới")
end

Then(/^User fill_in 'Tiêu đề' with 'Một ngày buồn'$/) do
  fill_in "post_title", :with => "Một ngày buồn"
end

Then(/^User fill_in 'body' with 'Có những chuyện không thể nói ra\.'$/) do
  fill_in "post_body", :with => "Có những chuyện không thể nói ra\."
end

Then(/^User fill_in 'date' with '(\d+)'$/) do |arg1|
  fill_in "post_date", :with => arg1
end

Then(/^User click button 'Tạo nhật ký'$/) do
  click_button "Tạo nhật ký"
end

Then(/^User could see their Dairy$/) do
  expect(page).to have_content("Một ngày buồn")
end