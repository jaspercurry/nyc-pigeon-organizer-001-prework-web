def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |property, v|
    v.each do |value, v1|
        v1.each do |name|
            new_hash[name]= {}
        end
    end
  end
 
  data.each do |property, v|
    v.each do |value, v1|
        v1.each do |name|
            new_hash[name][property] = []
        end
    end
  end

    data.each do |property, v|
    v.each do |value, v1|
        v1.each do |name|
            new_hash[name][property] << value.to_s
        end
    end
  end
  new_hash
end

#nyc_pigeon_organizer(pigeon_data)
#new_hash[name] = ""

#new_hash[name]= {}


# new_hash[name][k] = []
# new_hash[name][k] << k1
# new_hash[name] = {k => [k1]}