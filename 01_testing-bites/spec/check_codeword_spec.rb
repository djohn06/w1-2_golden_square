require 'check_codeword'
describe 'check_codeword' do 
    it 'returns "Correct! Come in." when passed "horse"' do
        expect(check_codeword("horse")).to eq "Correct! Come in."
    end
    it 'returns "Close, but no." First letter H and last letter E"' do
        expect(check_codeword("house")).to eq "Close, but no."
    end
    it 'returns "WRONG!" when passed anything else.' do
        expect(check_codeword("tonight")).to eq "WRONG!"
    end
end