class Authenticaion < ActiveRecord::Base
  belongs_to :room

  attr_accessor :building, :floor
end
