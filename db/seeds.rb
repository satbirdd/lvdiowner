# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


buildings = {
  :'7' => { :'30' => '8' },
  :'8' => { :'34' => '6' },
  :'15' => { :'33' => '4' }
}

buildings.each do |dong, ceng|
  b = Building.create(title: dong.to_s)
  high = ceng.keys.first.to_s.to_i
  hao = ceng.values.first.to_s.to_i
  (1..high).each do |floor|
    fl = b.floors.create(title: floor.to_s)
    (1..hao).each do |h|
      fl.rooms.create(title: h.to_s)
    end
  end
end