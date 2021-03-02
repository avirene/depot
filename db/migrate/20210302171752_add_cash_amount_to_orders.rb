class AddCashAmountToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :cash_amount, :integer
  end
end
