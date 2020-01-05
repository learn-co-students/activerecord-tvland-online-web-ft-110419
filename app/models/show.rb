class Show < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  belongs_to :network

  def actors_list
    Actor.all.map {|act| act.first_name + " " + act.last_name}
  end 
end