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
  inner_array_integers.reject do |number|
    number.max(inner_array_integers.length - 1) #reject all highest numbers except one, leaving min in array
  end
  name_hash_array[name_hash_array.index(inner_array_integers.to_s)]
  
end
