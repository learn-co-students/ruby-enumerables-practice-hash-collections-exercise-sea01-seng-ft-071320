require 'pry'

def begins_with_r(array)
  array.all? { |element| element.start_with?('r') }
end

def contain_a(array)
  array.select { |element| element.include?('a') }
end

def first_wa(array)
  array.find { |element| element.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.reject { |element| element.class != String }
end

def count_elements(array)
  array.map do |element|
    element[:count] = array.select { |selected_ele| selected_ele[:name] == element[:name] }.length
    element
  end.uniq
end

def merge_data(data_1, data_2)
  data_1.each.with_index do |entry, index|
    data_2[index].each do |k, v|
      data_1[index][k] = v
    end
  end
end

def find_cool(array)
  array.select { |hash| hash[:temperature] == 'cool' }
end

def organize_campuses(campuses)
  organized_campuses = {}

  campuses.each do |campus, location|
    location_key = location[:location]
    organized_campuses[location_key] ||= []
    organized_campuses[location_key] << campus
  end

  organized_campuses
end