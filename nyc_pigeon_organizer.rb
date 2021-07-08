def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |property, property_info|
    property_info.each do |attribute, attr_info|
      attr_info.each do |name|
        if !result.has_key?(name)
          result[name] = {}
        end

        if !result[name].has_key?(property)
          result[name][property] = []
        end

        if !result[name][property].include?(attribute)
          result[name][property] << attribute.to_s
        end
      end
    end
  end
  return result
end
