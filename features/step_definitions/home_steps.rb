When(/^Toi di toi post show$/) do
  visit post_path
end

Then(/^Toi co the nhin thay nhat ky cua minh$/) do
  expect(page).to have_content("Add comment")
end