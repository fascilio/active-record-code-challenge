class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        reviews.create(user: user, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        reviews.each { |review| review.print_review }
    end

    def average_rating
        return 0 if reviews.empty?

        total_rating = reviews.sum(:star_rating)
        total_rating.to_f / reviews.count
    end
end