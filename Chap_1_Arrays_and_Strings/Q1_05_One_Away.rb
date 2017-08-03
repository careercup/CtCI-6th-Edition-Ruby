def one_away(s1, s2)
  s1_array = s1.split('')
  s2_array = s2.split('')

  intersection_length = (s1_array & s2_array).length

  if s1.length >= s2.length
    if intersection_length == (s1.length - 1) 
      true
    else
      false
    end
  elsif s1.length < s2.length
    if intersection_length == (s2.length - 1)
      true
    else
      false
    end 
  end
end
