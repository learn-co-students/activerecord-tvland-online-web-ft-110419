# frozen_string_literal: true

class RemoveCatchpharseFromActors < ActiveRecord::Migration[5.2]
    def change
        remove_column :actors, :catchphrase, :string
    end
end
