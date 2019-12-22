require 'pry'
class Show < ActiveRecord::Base
  has_one :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.map{|actor| actor.full_name}
  end

  def build_network(hash)
    Network.find_or_create_by(hash).shows << self
  end
end