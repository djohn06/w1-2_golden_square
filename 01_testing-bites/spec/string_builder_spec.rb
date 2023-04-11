# The file required for the spec to run
require 'string_builder'

RSpec.describe StringBuilder do
  it "count the number of characters in a string" do
    string = StringBuilder.new
    string.add("David")
    result = string.size
    expect(result).to eq 5
  end 
  it "count the number of characters in a string" do
    string = StringBuilder.new
    string.add("David")
    result = string.output
    expect(result).to eq "David"
  end
end