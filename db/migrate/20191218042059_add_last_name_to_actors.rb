class AddLastNameToActors < ActiveRecord::Migration[5.2]
  def change
  	add_column :actors, :last_name, :string
  end
end
