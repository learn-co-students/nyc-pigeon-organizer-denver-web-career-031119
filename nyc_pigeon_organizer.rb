def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |attributes, bird_characteristics|
    bird_characteristics.each do |characteristic, names|
      names.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        
        if !pigeon_list[name].has_key?(attributes)
          pigeon_list[name][attributes] = []
        end
        
        if !pigeon_list[name][attributes].include?(characteristic)
          pigeon_list[name][attributes] << characteristic.to_s
        end
      end
    end
  end
  
  pigeon_list
end
