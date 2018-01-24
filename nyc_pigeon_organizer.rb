def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |attribute, kinds|
    kinds.each do |option, names|
      names.each do |name|
        if !pigeon_list.keys.include?(name)
          pigeon_list[name] = {attribute => [option.to_s]}
        elsif !pigeon_list[name].keys.include?(attribute)
          pigeon_list[name][attribute] = [option.to_s]
        else
          pigeon_list[name][attribute].push(option.to_s)
        end
      end
    end
  end

  pigeon_list
end
