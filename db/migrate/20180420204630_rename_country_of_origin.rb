class RenameCountryOfOrigin < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :country_of_origin, :countryoforigin
  end
end
