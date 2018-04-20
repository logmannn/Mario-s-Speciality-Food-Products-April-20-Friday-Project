class Review < ActiveRecord::Base
  belongs_to :product

  validates :country_of_origin, :presence => true
end
