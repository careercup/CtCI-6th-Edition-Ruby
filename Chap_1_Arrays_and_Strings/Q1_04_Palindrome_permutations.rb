# Problem:
# Ommitted out of adherence to the wishes of the autor of cracking the coding interview

#Examples
# Input: "Tact Coa"
# Output: True (permutations: "taco cat", "atco cta", etc.)

# Data Structures
# We will use Strings and Arrays

# Thoughts:
# A palindrome is the same backwards as it is forwards, but since we are checking for a permutation of a palindrome, the letters can be in any order. All we need to know is if the letters could be rearranged such that it could be a palindrome. So what are the requirements of this? Simply that there is an even number of every letter, except for the middle letter, which is odd, since there should only be one of it. 

# Edge Cases:
# If every letter is the same, then it is a palindrome

# Algorithm
# Check is every letter is the same. If it is, return true
# For every letter count the number of occurances. 


def palindrome_permutation(str)
  str.downcase!           
  str.gsub!(/\s+/, '')                   # Get rid of all white spaces
  return true if str.split('').uniq.length == 1

  singles = 0

  str.each_char do |char|
    char_count = str.count(char)
    singles += 1 if char_count == 1
    return false if singles > 1
    return false if char_count % 2 != 0 unless char_count == 1
  end

  true
end


p palindrome_permutation('ttttt i' ) == false
p palindrome_permutation('cat') == false
p palindrome_permutation('Tact Coa') == true   #('taco cat')
p palindrome_permutation('viicc') == true      #('civic')
p palindrome_permutation('mom') == true        #('mom') 
p palindrome_permutation('Arc acer') == true   #('racecar')
p palindrome_permutation('aaaaaa') == true     #('aaaaaa')