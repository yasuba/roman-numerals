class RomanNumerals

  ROMAN = { "IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900, 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}.freeze
  ARABIC = { 50 => "L", 10 => "X", 5 => "V", 1 => "I"}

   def convert(string)
    total = 0
    roman_numerals = ""
    if string.is_a? String
      ROMAN.each do |k, v|
        string.scan(k).count.times{total += v}
        string.gsub!(k, "")
      end
      total
    else
      ARABIC.each do |k, v|
        (string/k).times do
          roman_numerals << v
          string = string - k
        end
      end
      roman_numerals
    end
   end

end
