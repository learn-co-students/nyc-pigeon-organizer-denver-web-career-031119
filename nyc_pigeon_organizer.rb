def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each{|attribute, characteristic|
  characteristic.each{|features, name|
    name.each{|pigeon|
      new_hash[pigeon] ||= {}
      new_hash[pigeon][attribute] ||= []
      new_hash[pigeon][attribute] << features.to_s}}}
      new_hash
end