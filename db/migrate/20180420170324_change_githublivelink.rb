class ChangeGithublivelink < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :githublink
  end
end
