class AddChangeToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :change, :integer
  end
end
