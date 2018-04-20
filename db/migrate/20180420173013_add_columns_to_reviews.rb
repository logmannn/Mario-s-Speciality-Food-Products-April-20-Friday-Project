class AddColumnsToReviews < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :description, :author    
    add_column :reviews, :content_body, :string
    add_column :reviews, :rating, :integer
  end
end
