class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :image, :presence => true
  validates :country_of_origin, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name, products.image, products.country_of_origin, products.githublink, products.livelink, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
  )}

  scope :most_reviews_ascending, -> {(
    select("products.id, products.name, products.image, products.country_of_origin, products.githublink, products.livelink, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count ASC")
    .limit(10)
  )}

  # scope :no_reviews, -> {(
  #   select("products.id, products.name, products.image, products.country_of_origin, products.githublink, products.livelink, count(reviews.id) as reviews_count")
  #   .joins(:reviews)
  #   .group("products.id")
  #   .order("reviews_count ASC")
  #   .limit(10)
  # )}

  scope :id_sort, -> {(
    select("products.id, products.name, products.image, products.country_of_origin, products.githublink, products.livelink")
    .group("products.id")
    .limit(10)
  )}



end
