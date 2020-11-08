# spec/caesar_spec.rb

require '../006-caesar.rb'

describe "caesar_cipher" do

  it "handle lower case" do
    expect(caesar_cipher("a", 5)).to eql("f")
  end
  
  it "handle lower case wrapping" do
    expect(caesar_cipher("z", 5)).to eql("e")
  end

  it "handle lower case wrapping with n > 26" do
    expect(caesar_cipher("a", 27)).to eql("b")
  end

  it "handle lower case wrapping with n > 26" do
    expect(caesar_cipher("z", 27)).to eql("a")
  end

  it "handle upper case" do
    expect(caesar_cipher("A", 5)).to eql("F")
  end

  it "handle upper case wrapping" do
    expect(caesar_cipher("Z", 5)).to eql("E")
  end

  it "handle backwards wrapping" do
    expect(caesar_cipher("A", -5)).to eql("V")
  end

  it "handle backwards" do
    expect(caesar_cipher("Z", -3)).to eql("W")
  end

  it "ignore non alpha chars" do
    expect(caesar_cipher("!", 5)).to eql("!")
  end

  it "respect case" do
    expect(caesar_cipher("AaAa!aAaa", 1)).to eql("BbBb!bBbb")
  end

end