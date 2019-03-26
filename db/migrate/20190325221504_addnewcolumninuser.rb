class Addnewcolumninuser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :checkedin, :boolean , default: false
  end
end
