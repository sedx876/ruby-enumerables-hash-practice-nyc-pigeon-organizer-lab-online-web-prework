def nyc_pigeon_organizer(data)
pigeon_data.each do |attribute, attribute_data|
    attribute_data.each do |option, pigeon_array|
      pigeon_array.each do |pigeon|
        if pigeon_names.include?(pigeon) == false
          pigeon_names << pigeon
          pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
  end
end

pigeon_names.each do |pigeon_name|
    pigeon_data.each do |attribute, attribute_data|
      array = []
      attribute_data.each do |option, pigeon_array|
        if pigeon_array.include?(pigeon_name)
          array << option.to_s
        end
      end
      pigeon_list[pigeon_name][attribute] = array
    end
  end
pigeon_list
end

pigeon_list = {}

   pigeon_data.each {|attribute, attribute_data| attribute_data.each {|option, pigeon_array| pigeon_array.each {|pigeon|
        if pigeon_list.include?(pigeon)
          pigeon_list[pigeon].include?(attribute) ?  pigeon_list[pigeon][attribute] << option.to_s : pigeon_list[pigeon][attribute] = [option.to_s]
        else
          pigeon_list[pigeon] = {attribute => [option.to_s]}
        end
      }}}
  pigeon_list
end


