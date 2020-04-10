Feature: Add a new blog entry
  
  As a blogger
  So that I can easily contribute content to my blog
  I want to be able to add a new blog entry
  
  Scenario: As a blogger I want to be able to navigate from the home page to the new article form and create an article
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
    When I click on the "Article List" link
    Then I should be on the "Listing articles" page
    When I click on the "Edit" link
    Then I should be on the "Editing article" page
    When I fill in the Text field with I edited an article
    When I click on the "Update Article" button
    Then I should be on the "Article" page
    And I should see the "I edited an article" content