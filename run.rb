require_relative 'config/environment'

# user = User.first
# puts user.reviews.inspect

user = User.first
puts "User: #{user.name}"
user1 = User.last
puts "User: #{user1.name}"

product = Product.find(4)
puts "Product: #{product.name}"

review = Review.find(4)
puts "Review by #{review.user.name}: #{review.star_rating}. #{review.comment}"

user = User.first
favourite_product = user.favourite_product

if favourite_product
  puts "Favorite product of #{user.name} is #{favourite_product.name}"
else
  puts "#{user.name} has no favorite product"
end

# puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
review = Review.first

puts "Review for #{review.product.name} by #{review.user.name}:"
puts "Star rating: #{review.star_rating}"
puts "Comment: #{review.comment}"

average_rating = product.average_rating
puts "Average rating for #{product.name}: #{average_rating}"
