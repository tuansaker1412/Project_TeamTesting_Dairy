Feature: Post 
As a logged in user
I want to post
So that I share my oppinion
  
    Scenario: User creates a new post
    Given User was logged in
    When User clicks  'Tạo nhật ký mới' 
    Then User should see a page with title 'Tiêu đề', body 'Nội dung nhật ký', date 'Ngày' , button 'Tạo nhật ký'
    Then User fill_in 'Tiêu đề' with 'Một ngày buồn'
    Then User fill_in 'body' with 'Có những chuyện không thể nói ra.'
    Then User fill_in 'date' with '1032016'
    Then User click button 'Tạo nhật ký'
    Then User could see their Dairy
  