class CreatePurchasePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_purchases do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.string :status
      t.integer :products_id, array: true
      t.integer :quantities, array: true
      t.integer :prices, array: true

      t.timestamps
    end

    add_index :purchase_purchases, :products_id, using: 'gin'
    add_index :purchase_purchases, :quantities, using: 'gin'
    add_index :purchase_purchases, :prices, using: 'gin'
  end
end
