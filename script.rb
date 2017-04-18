require 'csv'
require 'json'
#CSV.foreach("add.csv", headers: true) do |row|
#  Sermon.create!(row.to_hash) 
#end

#file = File.read('mp3data.json')
#array_hash = JSON.parse(file)
#array_hash.each do |x|
#  y = Sermon.find_by(mp3: x["mp3"]) 
#  y.update_columns(ytube_id:  x['ytube_id'])
#end

x = Sermon.where(location: 'FWBC')
x.each do |y|
  y.update!(location: "Faithful Word Baptist Church")
end