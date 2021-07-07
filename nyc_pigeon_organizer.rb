
def nyc_pigeon_organizer(data)
  pigeon_list = initialize_pigeon_list(data)

    data.each do |category, attribute|
      attribute.each do |specific_attribute, names|

        names.each do |bird_name|
          pigeon_list.keys.each do |id|
            if bird_name == id

               pigeon_list[id][category] << specific_attribute.to_s
            end
          end
        end
      end

    end


  pigeon_list
end


def initialize_pigeon_list(data)
  pigeon_list = {}
    data.each do |general_data, detail|
      detail.each do |detail, names|
        names.each do |id|
          if pigeon_list.has_key?(id)
            pigeon_list[id][general_data]= []
          else
            pigeon_list[id] = {}
            pigeon_list[id][general_data]=[]
          end

        end
      end

    end
  pigeon_list
end
