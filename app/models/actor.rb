class Actor < ActiveRecord::Base
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
      
    def list_roles
        self.characters.collect do |character|
         "#{character.name} - #{character.show.name}"
        end.join
    end
end