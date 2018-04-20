class ChangeDatabaseColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :description, :country_of_origin
    add_column :products, :cost, :integer
  end
end
