class Task < ActiveRecord::Base
  belongs_to :product

  validates :description, :presence => true
end
