def nyc_pigeon_organizer(data)
  # write your code here!
  revised_data = {}
  data.each do |category, category_value|
    category_value.each do |attribute, names|
      names.each do |name|
        if !revised_data[name]
          revised_data[name] = {}
        end
        if !revised_data[name][category]
          revised_data[name][category] = []
        end
        revised_data[name][category] << attribute.to_s
      end
    end
  end
  revised_data
end