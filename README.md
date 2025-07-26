# CaesarCipher

This script implements a Caesar cipher — a simple substitution cipher that shifts letters in a string by a user-defined number while preserving case, spacing, and symbols.

Each alphabetic character in the string is rotated by the specified number of positions:
	•	'A' to 'Z' and 'a' to 'z' wrap around using modulo (% 26)
	•	Non-letter characters (like spaces, ,, !, etc.) are preserved as-is

$ ruby caesar_cipher.rb
Enter text to encode: Hello, World!
Enter shift amount: 5
Mjqqt, Btwqi!

To decode, pass a negative rotation:
puts caesar_cipher("Mjqqt, Btwqi!", -5) # => Hello, World!