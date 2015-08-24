class AddSharekeyToUser < ActiveRecord::Migration
  def change
  	add_column :users, :share_key, :string
  end
end
