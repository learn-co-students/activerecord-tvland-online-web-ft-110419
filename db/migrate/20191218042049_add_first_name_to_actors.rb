class AddFirstNameToActors < ActiveRecord::Migration[5.2]
  def change
  	add_column :actors, :first_name, :string
  end
end
