require 'order'

RSpec.describe Order do
    context '#initially' do
        it 'returns an empty array' do
            repo = Order.new
            expect(repo.receipt).to eq []
        end
    end

    context '#view_menu' do
        it 'returns a list of all items in menu' do
            repo = Order.new
            expect(repo.view_menu).to include("{'hash brown' => '£1.00'}")
            expect(repo.view_menu).to include("{'fries' => '£2.00'}")
            expect(repo.view_menu).to include("{'coffee => '£1.50'}")
        end
    end


end