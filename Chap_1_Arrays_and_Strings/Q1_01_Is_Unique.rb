def is_unique(string)
  unique = ''
  string.chars do |char|
    unique << char if unique.include?(char) == false
  end
  string.length == unique.length ? true : false
end
