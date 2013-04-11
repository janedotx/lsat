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

  def generate_array(i, j)
    arr = []
    (j - i + 1).times do |x|
      arr << i + x
    end
    arr
  end

  def randomly_insert(arr, item)
    return [item] if arr.blank?
    Random.new_seed
    index = Random.rand(arr.size)
    (arr[0...index] << item) + arr[index...arr.size]
  end
end
