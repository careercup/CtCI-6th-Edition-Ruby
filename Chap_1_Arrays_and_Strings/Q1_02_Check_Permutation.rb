module CheckPermutation
  # O(n)
  def self.with_array(s1, s2)
    return false unless s1.length == s2.length
    letters = Array.new(128, 0)

    s1.chars { |char| letters[char.ord] += 1 }
    s2.chars { |char| return false if (letters[char.ord] -= 1) < 0 }

    true
  end

  # O(n)
  def self.with_hash(s1, s2)
    return false unless s1.length == s2.length
    table = Hash.new(0)

    s1.each_char { |char| table[char] += 1 }

    s2.each_char do |char|
      table[char] -= 1
      return false if table[char] < 0
    end

    true
  end

  # Ruby uses Quicksort for Array#sort, 
  # so this is O(n log n)
  def self.with_sort(s1, s2)
    if s1 == s2
      true
    else
      s1.chars.sort == s2.chars.sort
    end
  end
end
