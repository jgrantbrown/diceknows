class Dice < ActiveRecord::Base
  has_many :images
  has_many :sayings

end
