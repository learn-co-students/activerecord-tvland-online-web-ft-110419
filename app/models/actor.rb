# frozen_string_literal: true

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
end
