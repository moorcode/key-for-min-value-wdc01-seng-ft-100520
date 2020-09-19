# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  output_name = ""
  name_hash_array = name_hash.to_a
  row_index = 0
  while row_index < name_hash_array.count  do
    if row_index[0].last < row_index.last
        output_name = name_hash_array[row_index].first.to_s
        row_index += 1
    end
  end
  if name_hash.empty?
    nil
  else
      name_hash_array[0]
  end
end
