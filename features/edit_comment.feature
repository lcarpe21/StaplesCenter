Feature: Edit a comment
  
  As a blogger
  So that people  can edit feedback on my articles
  I want people to be able to edit comments on articles
  
  Scenario: As a blogger I want to be able to navigate from the home page
    to the edit comment form
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
    When I click on the "Edit" link
    Then I should be on the "Editing comment" page
    And I should see the "Commenter" field
    And I should see the "Body" field
    When I fill in the Body field with I edited this
    When I click on the "Update Comment" button
    Then I should be on the "Article" page
    And I should see the "I edited this" content
    