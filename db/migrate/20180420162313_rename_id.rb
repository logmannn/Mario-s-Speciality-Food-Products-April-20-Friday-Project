class RenameId < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :list_id, :product_id    
  end
end
