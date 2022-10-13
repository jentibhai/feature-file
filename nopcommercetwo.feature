Feature:Demo Nopcommerce's topmenu acceptance criteria
as a user ,I would like to check acceptance criteria of Nopcmmerce topmenu
Background:User is on given URL
When User type URL http://demo.nopcommerce.com
And User click on Enter button
Then User is on given uRL

Scenario: Verify that User can navigate to Books category
When User is on given URL
And Click on Books tab on Top Menu
Then User is navigated to Books Category page

Scenario:Verify that user can see the Books category page with filters ans list of products
When User is on given URL
And Click on Books tab on Top Menu
And Check filters and List Tab.
Then Books category page is displayed with filters and list tabs

Scenario:Verify that user can see 'sort by' filter on Book Categoy page
Given User is on Books Category page
When User is on Books Category page
And Check 'Display' filter is present
Then 'Display' filter is available on Book Category page





