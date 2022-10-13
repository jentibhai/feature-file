Feature: Bookcategory

Background: I should be able to see browser
Given       I enter URL"http://demo.nopcommerce?" in browser
And         I am on home page

Scenario outliner: I should be able to see top menu tabs on homepae with categories
When               I am on home page
Then               I should be able to see top menu tabs with "<categories>"
Examples:
|categories         |
|computer           |
|Electronics        |
|Apparel            |
|Digital downloads  |
|Books              |
|jewellery          |
|Gift card          |

Scenario outliner: I should be able to see book page with filter
When I select book category from top menu tabs on home page
Then I should be navigated to book category
And  I should be able to see"<filter>"

Examples:
|filters   |
|short by  |
|Display   |
|the Grid  |
|List Tab  |

Scenario Outliner: I should be able to see list of term of each filter
Given  I am on book page
When I click on "<filter>"
Then I should be see "<list>" in dropdown menu
Examples:
|filter      |list                                                              |
|short by    |Name:A to Z,name:Z o A,price :Low to high,High to Low,Created on  |
|Display      |  3,6,9                                                            |

Scenario outliner: I should be able to choose any filter option from the list
Given  I am on book page
When   I click on any "<Option>"
Then   I should be able to choose any filter option from the list
And    I should be able to see "<result>"

Examples:
|filter    |option    |result    |
|sort by   |Name:A to Z  |sorted product with the product name in alphabetical order A to Z|
|sort by   |Name:Z to A  |sorted product with the product name in alphabetical order A to Z|
|sort by   |Price:low to high  |sorted product with the price in descending order   |
|sort by   |Created on  |Recently added product should be show first  |
|Display  |3   |3 product in a page  |
|Display  |6   |6 product in a page  |
|Display  |9   |9 product in a page  |

Scenario outline:I should be able to see product display format according display formt type as per given picture in srs document
Given  I am on book page
When   I click on "<display format icon>"
Then   I should be able to see product display format acccording display format type as per given picture in SRS document
Examples:
| display format icon  |
|Grid                  |
|List                  |