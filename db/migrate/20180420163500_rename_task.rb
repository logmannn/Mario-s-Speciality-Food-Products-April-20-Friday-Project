class RenameTask < ActiveRecord::Migration[5.1]
  def change
    rename_table :tasks, :reviews    
  end
end
