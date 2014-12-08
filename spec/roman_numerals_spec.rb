require 'roman_numerals'

describe RomanNumerals do

let(:rm) {RomanNumerals.new}

  it "converts the string 'I' to the number 1" do
   expect(rm.convert('I')).to eq 1
  end

  it "converts the string 'V' to the number 5" do
  	expect(rm.convert('V')).to eq 5
  end

  it "converts the string 'II' to the number 2" do
  	expect(rm.convert('II')).to eq 2
  end

  it "converts the string 'VI' to the number 6" do
  	expect(rm.convert('VI')).to eq 6
  end

  it "converts the string 'XL' to the number 40" do
  	expect(rm.convert('XL')).to eq 40
  end

  it "converts the string 'XCIV' to the number 94" do
  	expect(rm.convert('XCIV')).to eq 94
  end

  it "converts the string 'XLVII' to the number 47" do
    expect(rm.convert('XLVII')).to eq 47
  end

  it "converts the string 'XIV' to the number 14" do
    expect(rm.convert('XIV')).to eq 14
  end


end