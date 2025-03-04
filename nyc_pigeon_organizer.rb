def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |property, result|
    result.each do |value, names|
        names.each do |name|
            new_hash[name] ||= {}
            new_hash[name][property] ||= []
            new_hash[name][property] << value.to_s
        end
    end
  end
  new_hash
 end

 # http://stackoverflow.com/questions/1389081/what-does-the-operator-stands-for-in-ruby?lq=1

 #old answer:
=begin

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

=end