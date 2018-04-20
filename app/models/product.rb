class Product < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true

  scope :most_tasks, -> {(
    select("products.id, products.name, products.image, products.description, products.githublink, products.livelink, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("products.id")
    .order("tasks_count DESC")
    .limit(10)
  )}

  scope :most_tasks_ascending, -> {(
    select("products.id, products.name, products.image, products.description, products.githublink, products.livelink, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("products.id")
    .order("tasks_count ASC")
    .limit(10)
  )}

  # scope :no_tasks, -> {(
  #   select("products.id, products.name, products.image, products.description, products.githublink, products.livelink, count(tasks.id) as tasks_count")
  #   .joins(:tasks)
  #   .group("products.id")
  #   .order("tasks_count ASC")
  #   .limit(10)
  # )}

  scope :id_sort, -> {(
    select("products.id, products.name, products.image, products.description, products.githublink, products.livelink")
    .group("products.id")
    .limit(10)
  )}



end
