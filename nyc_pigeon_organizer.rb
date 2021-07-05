require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_data = {}

  data.each do |attribute, more_data|
    more_data.each do |specific_attribute, names|
      names.each do |name|
        if pigeon_data.has_key?(name)

          if pigeon_data[name].has_key?(attribute)
            pigeon_data[name][attribute] << specific_attribute.to_s
          else
            pigeon_data[name][attribute] = [specific_attribute.to_s]
          end
        else
          pigeon_data[name] = {attribute => [specific_attribute.to_s]}
        end
      end
    end
  end
pigeon_data
end
