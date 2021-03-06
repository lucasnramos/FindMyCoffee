class Store < ApplicationRecord
  has_many :ratings
  validate_presence_of :lonlat, :google_place_id, :name
  validates :google_place_id, uniqueness: true


  scope :within, -> (longitude, latitude, distance_km = 5) {
    where(
      %{ ST_Distance(lonlat, 'POINT(%f %f)') < %d }
      % [longitude, latitude, distance_km * 1000]
    )
  }
end
