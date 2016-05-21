Given (/^Signup$/) do 
  visit '/users/sign_up'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
  fill_in "Password confirmation", :with => 'manhtmhp123'
  click_button "Sign up"
  expect(page).to have_content("Nhật Ký Online")
end

When(/^I sign out.$/) do
  find_link('Đăng xuât').click
end

Given (/^Login$/) do 
  visit '/users/sign_in'
  fill_in "Email", :with => 'huymanhtmhp@gmail.com'
  fill_in "Password", :with => 'manhtmhp123'
  click_button "Sign In"
end

Given (/^I create a new Post$/) do 
    find_link('Tạo nhật ký mới').click
    fill_in "post_title", :with => "Ngày mưa rơi"
    fill_in "post_body", :with => "Hom nay la 1 ngay buon"
    fill_in "post_date", :with => "10/3/2016"
    click_button "Tạo nhật ký"
    
end
When(/^I comment$/) do
  fill_in "comment_body", :with => "Hehehe"
  click_button "Add Comment"
end

Then(/^I should see my comment$/) do
  expect(page).to have_content("Hehehe")
end