Feature: Delete a  blog entry
  
  As a blogger
  So that I can easily delete content to my blog
  I want to be able to delete a new blog entry
  
  Scenario: As a blogger I want to be able to navigate from the home page to the article list and delete an article
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
    When I click on the "Destroy" link
    Then I should be on the "Listing articles" page
    And I should not see the "Test article" content