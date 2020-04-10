Feature: Create a comment
  
  As a blogger
  So I want people to be able to create comments to give feedback on my articles
  
  Scenario: As a blogger I want to be able to navigate from the home page
    to the create comment form
    Given I am on the home page
    When I click on the "My Blog" link
    Then I should be on the "Listing articles" page
    When I click on the "New article" link
    Then I should be on the "New Article" page
    And I should see the "Title" field
    And I should see the "Text" field
    When I fill in the Title field with Test article
    When I fill in the Text field with just testing to create article
    When I click on the "Create Article" button
    Then I should be on the "Article" page
    And I should see the "Test article" content
    And I should see the "Commenter" field
    And I should see the "Body" field
    When I fill in the Commenter field with jeremy
    When I fill in the Body field with I am testing!
    When I click on the "Create Comment" button
    Then I should be on the "Article" page
    And I should see the "I am testing!" content