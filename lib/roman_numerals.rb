class RomanNumerals

  # NUMERALS = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100}

  # def convert(string)
  #   total = 0
  #   letters = string.split('')
  #   letters.each do |l|
  #     if (string.length > 1 && NUMERALS[letters[1]] > NUMERALS[letters[0]])
  #         total = NUMERALS[l] - total
  #     else
  #         total = total + NUMERALS[l]
  #     end
  #   end
  #   total
  # end

  # def convert(string)
  #   total = 0
  #   string.chars.map{|letter|NUMERALS[letter]}.each_slice(2) do |pair|
  #     total += pair.first >= pair.last  ? pair.inject(:+) : pair.reverse.inject(:-)
  #   end
  #   total
  # end

# use chars method instead of split, then converting the array into numbers instead of letters
# iterate over each pair of numbers then check if the first number of the pair is greater than the last number
# if so then get the total of the pair, if not, reverse the order of the pair and then total.
# Then add all those totals together

 NUMERALS = { "IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900, 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}.freeze

   def convert(string)
    total = 0
    NUMERALS.each do |k, v|
      string.scan(k).count.times{total += v}
      string.gsub!(k, "")
    end
    total
   end

# this method defines the difficult numbers as part of the numerals constant.
# Scan checks the string for the accepted numerals from the constant, so for XIV, first time round will return X
# count = 1 and multiplied by the total ) plus v, which is 10. Then gsub the X for '', next time around the scan returns IV
# again the count is 1 and multiplied by 14 (the total 10 plus v, which is 4) is 14. Then return the total.

end
