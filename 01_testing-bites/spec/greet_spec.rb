require 'greet'

RSpec.describe "programme gives a greeting" do
    it "returns the name given in the parameter" do
      result = greet("Dave")
      expect(result).to eq "Hello, Dave!"
    end
end 


