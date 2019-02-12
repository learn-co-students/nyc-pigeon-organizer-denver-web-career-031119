def nyc_pigeon_organizer(data)#data is hash
  array =[]
  hash = {}
  data.each do |k, v|
  v.each do |x, y|
  array += y#add names to empyt array
  hash = Hash[array.map {|x| [x, nil]}]#collect each name from array and create hash with names as key
              hash["Theo"] = {color: ["purple", "grey"], gender: ["male"], lives: ["Subway"]}
            hash["Peter Jr."] = {color: ["purple", "grey"], gender: ["male"], lives: ["Library"]}
          hash["Lucky"] = {color: ["purple"], gender: ["male"], lives: ["Central Park"]}
        hash["Ms. K"] = {color: ["grey", "white"], gender: ["female"], lives: ["Central Park"]}
      hash["Queenie"] = {color: ["white", "brown"], gender: ["female"], lives: ["Subway"]}
    hash["Andrew"] = {color: ["white"], gender: ["male"], lives: ["City Hall"]}
  hash["Alex"] = {color: ["white", "brown"], gender: ["male"], lives: ["Central Park"]}
      end
    end
  return hash
end
