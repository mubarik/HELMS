class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :clockevents, :type, :event
  end
end
