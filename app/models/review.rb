class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, length: { maximum: 250,
    too_long: "%{count} characters is the maximum allowed" }
    validates :content_body, length: { minimum: 50,
      too_short: "%{count} characters is the minimum allowed" }    
  validates :rating, :presence => true
  validates :rating, :numericality => { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
