module Purchase
  class Purchase < ApplicationRecord
    validates :buyer_id, comparison: { other_than: :seller_id }
  end
end
