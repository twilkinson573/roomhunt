puts 'This will erase all existing data'
puts 'Are you sure you want to continue? (y/N)'

answer = STDIN.gets.chomp
exit unless answer.downcase == 'y'

Room.delete_all

data_file = File.read("#{ Rails.root }/data/raw_housing.json")
rooms = JSON.parse(data_file)

rooms.each do |key, val|
  Room.create(web_id: key.to_i,
              location: val['addr'],
              price: val['price'],
              size: val['size'],
              blurb: val['blurb']
             )
end
