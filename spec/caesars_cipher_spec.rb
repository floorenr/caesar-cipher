require './lib/caesars_cipher'

describe "#convert to cipher" do
  it "does basic conversion to cipher" do
    expect(cipher_calculation("l", 2, "Hello")).to eql("Fcjjm")
  end
  it "accepts outcome beyond a and z" do
    expect(cipher_calculation("l", 2, "Aaaa")).to eql("Yyyy")
  end
  it "is case sensitive" do
    expect(cipher_calculation("r", 4, "AbCd")).to eql("EfGh")
  end
  it "does not accept integers" do
    expect(cipher_calculation("r", 4, 4444)).to eql("EfGh")
  end
end