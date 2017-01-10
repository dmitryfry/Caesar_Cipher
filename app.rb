

def caesar_cipher fraza, shift

arr0 = ('A'..'Z').to_a
arr1 = ('a'..'z').to_a



arr2 = fraza.split(//)


arr2.each do |letter|

  if /[, \d \.';:!?()]+/.match letter
    print letter
  else
if arr0.include?(letter)
  u = arr0.index(letter.to_s.delete("[]")) + shift.to_i
  if u < 26
  print arr0[u]
else
  print arr0[u - 26]
end
else
  if letter == ' '
    print ' '
  else
    i = arr1.index(letter.to_s.delete("[]")) + shift.to_i
    if i < 26
    print arr1[i]
  else
    print arr1[i - 26]
  end

  end
end
end
end
puts ''
end

print "write the phrase to encrypt: "
r = gets.chomp!
print "write the shift?: "
b = gets.to_i


caesar_cipher r, b
