require 'rails_helper'

module Purchase
  RSpec.describe Purchase, type: :model do
    it { should allow_value(1).for(:seller_id) }
    it { should allow_value(2).for(:buyer_id) }
    it { should allow_value('ordered').for(:status) }
    it { should allow_value([1,2,3]).for(:products_id) }
    it { should allow_value([1,1,2]).for(:quantities) }
    it { should allow_value([10, 12, 6]).for(:prices) }
    it { should have_many(:deliveries) }

    let(:same_seller_buyer) { build(:purchase, buyer_id: 1, seller_id: 1) }

    it 'Does not allow seller_id and buyer_id be the same value' do
      expect(same_seller_buyer).to be_invalid
    end
  end
end
