# frozen_string_literal: true

class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
end
