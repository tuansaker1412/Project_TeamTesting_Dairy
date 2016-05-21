Feature: Comment 
  As a user
  I want to comment a post
  So I can share my opinion
 
Scenario: Comment a Dairy
  Given Signup
  When I sign out.
  Given Login
  Given I create a new Post
  When I comment
  Then I should see my comment