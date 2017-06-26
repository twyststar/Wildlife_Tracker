class Animal < ActiveRecord::Base
  validates :species, :presence => true
  validates :description, :presence => true

  has_many :sightings
  has_many :regions, through: :sightings

end
