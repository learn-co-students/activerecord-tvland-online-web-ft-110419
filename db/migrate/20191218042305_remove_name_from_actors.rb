class RemoveNameFromActors < ActiveRecord::Migration[5.2]
  def change
  	remove_column :actors, :name
  end
end
