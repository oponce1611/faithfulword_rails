require 'csv'
require 'json'
#CSV.foreach("add.csv", headers: true) do |row|
#  Sermon.create!(row.to_hash) 
#end

#file = File.read('data_upload.json')
#hash = JSON.parse(file)
#hash.each do |x|
#  y = Sermon.find_by(mp3: x['mp3']) 
#  y.update_columns(scloud:  x['scloud'], ytube_id: x['ytube_id'])
#end


Sermon.all.each do |obj|
  formats = obj.format
  mp3 = obj.mp3
  obj.update!(mp3: "//faithfulword.s3-us-west-1.amazonaws.com/Sermons/#{formats}/#{mp3}")
end
#x = Sermon.where(location: 'FWBC')
#x.each do |y|
#  y.update!(location: "Faithful Word Baptist Church")
#end

