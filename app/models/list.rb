class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true

  scope :most_tasks, -> {(
    select("lists.id, lists.name, lists.image, lists.description, lists.githublink, lists.livelink, count(tasks.id) as tasks_count")
    .joins(:tasks)
    .group("lists.id")
    .order("tasks_count DESC")
    .limit(10)
  )}

end
