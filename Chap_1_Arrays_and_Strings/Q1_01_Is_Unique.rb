def is_unique?(str)
  str.split('').uniq.length == str.split('').length ? true : false
end
