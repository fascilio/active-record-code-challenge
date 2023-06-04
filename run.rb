require_relative 'config/environment'

user = User.first
puts user.reviews.inspect