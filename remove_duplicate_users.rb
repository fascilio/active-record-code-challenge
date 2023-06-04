require_relative 'config/environment' 

# Find the duplicate user records based on the name attribute
duplicate_users = User.group(:name).having('count(*) > 1').pluck(:name)

# Remove the extra occurrences of each user
duplicate_users.each do |name|
  users_to_remove = User.where(name: name).order(:id).drop(1)
  users_to_remove.each(&:destroy)
end


duplicate_users = Product.group(:name).having('count(*) > 1').pluck(:name)

duplicate_users.each do |name|
  users_to_remove = Product.where(name: name).order(:id).drop(1)
  users_to_remove.each(&:destroy)
end
