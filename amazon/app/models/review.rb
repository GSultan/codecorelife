class Review < ApplicationRecord
  belongs_to :product
  validates :star_count, presence: true


#   - Product has many reviews
# - Every review has star count and body (for now just have the user enter a number for the value of star count, later you will learn how to show actual stars in Javascript)
# - Validation that body is optional but star count is required and must be a number between 1 and 5 inclusive
#
# Test your association in Rails console to make sure that it works.
end
