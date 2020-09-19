# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  name_hash_array = name_hash.to_a #turn hash to AoA
  inner_array_integers = []
  inner_array = 0

  if name_hash.empty?
    nil
  else
  name_hash_array[inner_array_integers.to_s.to_i][0]
end
end
