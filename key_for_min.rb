# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  end
  name_hash_array = name_hash.to_a #turn hash to AoA
  inner_array_integers = []
  inner_array = 0
  while inner_array < name_hash_array.count  do
    inner_array_integers << name_hash_array[inner_array].last #put AoA integers, 1th/last value in nested array,in separate array
    inner_array += 1
  end
  inner_array_integers.min_by do |number|
  end
  name_hash_array[inner_array_integers]
end
