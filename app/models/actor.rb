class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters 

  def full_name 
    name = "#{self.first_name} #{self.last_name}"
  end 

  def list_roles 
    roles = []
    array_of_character = self.characters.map {|character| character.name}
    array_of_show = self.shows.map {|show| show.name}
    role = array_of_character.concat array_of_show
    roles << role.join(" - ")
    roles 
  end 

end