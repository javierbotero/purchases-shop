FactoryBot.define do
  factory :purchase, class: Purchase::Purchase do
    seller_id { 1 }
    buyer_id { 2 }
    status { 'ordered' }
    products_id { [1,2,3] }
    quantities { [1,1,1] }
    prices { [10,5,5] }
  end
end