def is_unique?(string)
  string.each_char.with_object({}) do |char, hash_table|
    if hash_table[char]
      return false
    else
      hash_table[char] = true
    end
  end

  true
end
