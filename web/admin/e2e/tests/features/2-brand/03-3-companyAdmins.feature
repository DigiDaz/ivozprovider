@brand
@companyAdmins
@brand03
@brand03-3

Feature: Company admin admin page
  As a main operator
  I want to be able to access company admin admin page
  In order to check and manage them

Background:
  Given I go to the admin page
   When I send valid admin credentials
   Then I am logged in
   When I click on brand emulation button
    And I emulate the brand at position "1"
    And I click on "Companies" CTA
   Then I am on "Companies" list
   When I click on "Companies" first elements "companyAdmins" button
   Then I am on "CompaniesList_companyAdmins" subscreen list

Scenario: I can create new company admin
  When I click on add button
   And I fill out the form with "brand/companyAdmins/new" data fixture
  When I click on save button
  Then I can see confirmation dialog
  When I click on close dialog button
  Then I am on "CompaniesList_companyAdmins" subscreen list

Scenario: I can edit authorized sources
  Given I can see at least one row
   When I click on "companyAdmins" first elements edit button
    And I click on save button
   Then I can see confirmation dialog
   When I click on close dialog button
   Then I am on "CompaniesList_companyAdmins" subscreen list

Scenario: I can click on delete authorized sources button
  Given I can see at least one row
   When I select element at position "1"
    And I click on "companyAdmins" delete button in the footer
   Then I can see confirmation dialog
   When I click on close dialog button
   Then I am on "CompaniesList_companyAdmins" subscreen list
