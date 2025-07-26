# Caesar cipher for any rotation

def caesar_cipher(string, rotation)
  # convert the strings into chars
  encrypt = string.chars
  # map chr to ord for rotation and convert to chr and join string
  encrypt.map do |s|  
    if s =~ /[A-Z]/
      # if upcase
      base = "A".ord
      # set base to A.ord then subract the chr.ord, add the rotation wrap to % 26 then concert to chr
      (((s.ord - base + rotation) % 26) + base).chr
    elsif s =~ /[a-z]/
      # if downcase, do the same with a.ord as base
      base = "a".ord
      (((s.ord - base + rotation) % 26) + base).chr
    else
      # return for spaces, symbols etc
      s
    end
    # finally join
  end.join
end

# call method
print "Enter text to encode: "
text = gets.chomp
print "Enter shift amount: "
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)