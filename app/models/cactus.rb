class Cactus < ActiveRecord::Base
  attr_accessible :common_name, :description, :image, :latin_name, :notes, :planted_on
end
