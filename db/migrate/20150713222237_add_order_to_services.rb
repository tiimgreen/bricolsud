class AddOrderToServices < ActiveRecord::Migration
  def change
    add_column :services, :order, :integer
  end
end
