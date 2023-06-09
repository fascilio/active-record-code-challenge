# active-record-code-challenge

This project focuses on implementing a product review system for an e-commerce platform. It uses 
Active Record to manage the database and provides models and associations for Users, Reviews, and 
Products.

## Features
1. Users can write reviews for products.
2. Products can have multiple reviews.
3. Users can view their own reviews.
4. Users can view the products they have reviewed.
5. Products can display all the reviews associated with them.
6. Products can calculate the average rating based on all the reviews.

## Setup
Clone the repository.
Run `bundle install` to install the required gems.
Run the database migrations using `rake db:migrate`.
(Optional) Use the `seeds.rb` file to create sample data for testing.

## Usage
You can interact with the models and test the functionality using the `run.rb` file. It contains example code snippets that demonstrate the usage of various methods and associations.

# Models
## User
The User model represents a user of the e-commerce platform. It has the following associations and methods:

● `has_many :reviews`: A user can have multiple reviews.
● `has_many :products, through: :reviews`: A user can review multiple products.
● `#reviews`: Returns a collection of all the reviews given by the user.
● `#products`: Returns a collection of all the products reviewed by the user.
● `#favorite_product`: Returns the product with the highest star rating from the user's reviews.
●  `#remove_reviews(product)`: Removes all reviews by the user for a specific product.

## Product
The Product model represents a product available in the e-commerce platform. It has the following associations and methods:

● `has_many :reviews`: A product can have multiple reviews.
● `has_many :users, through: :reviews`: A product can be reviewed by multiple users.
● `#reviews`: Returns a collection of all the reviews associated with the product.
● `#users`: Returns a collection of all the users who reviewed the product.
● `#leave_review(user, star_rating, comment)`: Creates a new review associated with the product and a specific user.
● `#print_all_reviews`: Prints all the reviews for the product, including the user name, star rating, and comment.
● `#average_rating`: Calculates and returns the average star rating for the product's reviews.

## Review
The Review model represents a review given by a user for a specific product. It has the following associations:

● `belongs_to :user`: A review belongs to a user.
● `belongs_to :product`: A review belongs to a product.
● `#user`: Returns the User instance associated with the review.
● `#product`: Returns the Product instance associated with the review.

In addition, there is a file `remove_duplicate_users.rb` that can be used to remove duplicate users and products.

## Author
Samuel Karanja