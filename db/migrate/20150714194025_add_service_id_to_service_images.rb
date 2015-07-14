class AddServiceIdToServiceImages < ActiveRecord::Migration
  def change
    add_column :service_images, :service_id, :integer
  end
end
