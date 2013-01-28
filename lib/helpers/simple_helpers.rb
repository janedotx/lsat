module SimpleHelpers

  # only works on hashes with keys that look like this: 0, 1, 2, 3...
  # the keys should be ints
  def hash_to_ordered_array(hash)
    arr = []
    hash.size.times do |i|
      raise 'improperly keyed hash' unless hash[i]
      arr << hash[i]
    end
    arr
  end
end
