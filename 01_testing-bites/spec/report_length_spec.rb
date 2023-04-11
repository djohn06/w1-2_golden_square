require 'report_length'
describe 'Report length' do
    it 'returns the length in characters of the string that is passed.' do
        expect(report_length("really")).to eq "This string was 6 characters long."
    end
end