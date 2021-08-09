class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.integer :billing_amount
      t.integer :shipping_cost
      t.integer :payment_method
      t.integer :status
      t.integer :address_option
      t.integer :customer_id

      t.timestamps
    end
  end
end
