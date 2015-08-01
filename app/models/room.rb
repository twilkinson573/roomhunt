class Room < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  def json_package_room
    attributes = { web_id: web_id,
                   location: location,
                   price: price,
                   size: size,
                   latitude: latitude,
                   longitude: longitude
    }
  end

  private
  def full_address
    location + ", Amsterdam"
  end
end
