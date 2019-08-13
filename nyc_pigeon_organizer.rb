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
