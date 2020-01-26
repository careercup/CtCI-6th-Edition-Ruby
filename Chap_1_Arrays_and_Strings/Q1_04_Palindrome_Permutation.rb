def palindrome_permutation(string)
    
    characters = {}
    
    string.gsub(' ', '').each_char do |char|
        characters[char] ? (characters[char] += 1) : (characters[char] = 1)
    end

    odd_numbered_characters = []
    characters.each do |key, value| 
        value % 2 > 0 && (odd_numbered_characters << key)
        odd_numbered_characters.length > 1 && (return false)
    end

    return true

end