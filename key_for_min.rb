# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  else
  name_hash_array = name_hash.to_a.flatten #turn hash to AoA then A where key is listed before value
  integer_array = []
  name_hash_array.each do |element|
     if element.is_a? Integer
       integer_array << element #loop to shovel hash values/integers in integer array
     end
   end
    integer_max = integer_array.max(integer_array.length - 1) #create max array of highest values except one, the min
    min_integer = integer_array.difference(integer_max).join.to_i #isolate min/difference between integer/max arrays; turn to str, then int
    min_integer_index = name_hash_array.index(min_integer) #find index of min value
    name_hash_array.fetch(min_integer_index - 1) #
  end
end
