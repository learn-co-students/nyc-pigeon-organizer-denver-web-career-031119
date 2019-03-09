def nyc_pigeon_organizer(data)
  # write your code here!
  pidgeon_list = {}
  data[:gender].each do |the_gender, names|
    names.each do |name|
      pidgeon_list[name] = {:color=> [], :gender=>[the_gender.to_s], :lives=>[]}
    end
  end

  data[:color].each do |the_color, names|
    names.each do |pidgeon|
      pidgeon_list[pidgeon][:color] << the_color.to_s
    end
  end

  data[:lives].each do |location, names|
    names.each do |pidgeon|
      pidgeon_list[pidgeon][:lives] << location
    end
  end
  return pidgeon_list
end
