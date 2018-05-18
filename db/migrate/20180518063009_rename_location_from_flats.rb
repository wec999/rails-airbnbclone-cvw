class RenameLocationFromFlats < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :location, :address
  end

end
