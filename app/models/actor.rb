class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    string = []
    string << self.first_name
    string << self.last_name
    string.join(" ")
  end

  def list_roles
    self.characters.map{|character| "#{character.name} - #{character.show.name}"}
  end

end