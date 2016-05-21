Feature: Login Cucumber
As a product manager
I want our users can login
So that they have a better experience

Scenario: User logged in
Given Sign up
When I sign out
Given Sign in
When I sign in
Then I should see homepage

Then The current user is empty
When I sign in with wrong user
Then I should see 'Invalid email or password.'
Given Sign in
When I sign in and I check remember_me
