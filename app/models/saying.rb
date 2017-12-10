class Saying < ActiveRecord::Base
  belongs_to :dice

  attr_accessor :word

  

end
