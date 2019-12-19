
class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list #has an #actors_list method that returns a list of the full names of each actor associated with the show
    self.actors.collect do |actors|
      actors.full_name
   end
  end
end
