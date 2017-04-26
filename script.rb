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


array = ["Afrikaans",
"Albanian",
"Amharic",
"Arabic",
"Armenian",
"Assamese",
"Azerbaijani",
"Basque",
"Belarusian",
"Bengali",
"Bhojpuri",
"Bosnian",
"Bulgarian",
"Burmese (Myanmar)",
"Catalan",
"Cebuano (Philippines)",
"Chinese (Mandarin)",
"Chinese (Cantonese)",
"Cook Island Maori",
"Croatian",
"Czech",
"Danish",
"Dutch",
"Esperanto",
"Estonian",
"Fijian",
"Finnish",
"French",
"Galician",
"Georgian",
"German",
"Greek",
"Gujarati",
"Haitian",
"Hausa",
"Hawaiian",
"Hebrew",
"Hindi",
"Hungarian",
"Icelandic",
"Igbo",
"Ilocano",
"Ilonggo",
"Indonesian",
"Italian",
"Jamaican Patois",
"Japanese",
"Javanese",
"Kannada",
"Kazakh",
"Khmer",
"Kikuyu",
"Kinyarwanda",
"Kisii",
"Korean ",
"Konkani",
"Kyrgyz",
"Lao",
"Latin",
"Latvian",
"Lithuanian",
"Luxembourgish",
"Macedonian",
"Malagasy",
"Malay",
"Malayalam",
"Maltese",
"Maori",
"Marathi",
"Mongolian",
"Montenegrin",
"Nepali",
"Niuean",
"Norwegian",
"Odiya/Oriya",
"Oravian Polish",
"Oromo",
"Persian (Farsi)",
"Polish",
"Portuguese",
"Punjabi",
"Rapanui",
"Romanian",
"Russian",
"Samoan",
"Setswana",
"Serbian",
"Sindhi",
"Sinhalese",
"SiSwati",
"Slovak",
"Slovenian",
"Somali",
"Spanish",
"Swahili",
"Swedish",
"Tagalog",
"Tahitian",
"Tajik",
"Tamil",
"Telugu",
"Thai",
"Tongan",
"Turkish",
"Turkmen",
"Tuvaluan",
"Ukrainian",
"Urdu",
"Uzbek",
"Vietnamese",
"Welsh",
"Xhosa",
"Yiddish",
"Yoruba",
"Zulu"]

array.each do |x|
  Language.create(tongue: x)
end

#x = Sermon.where(location: 'FWBC')
#x.each do |y|
#  y.update!(location: "Faithful Word Baptist Church")
#end
