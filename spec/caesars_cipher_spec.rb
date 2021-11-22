require './lib/caesars_cipher'

describe "#convert to cipher" do
  it "does basic conversion to cipher" do
    input_string = "Hello"
    shift_direction = "l"
    shift_number = "2"
    expect(converted_string).to eql("Fcjjm")
  end
end