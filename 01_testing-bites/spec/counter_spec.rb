require 'counter'

RSpec.describe Counter do
  it "intially reports a count of zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
end 
    
