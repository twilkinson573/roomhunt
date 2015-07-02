class Room < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  private
  def full_address
    location + ", Amsterdam"
  end
end
