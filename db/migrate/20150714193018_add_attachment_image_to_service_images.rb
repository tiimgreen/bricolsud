class AddAttachmentImageToServiceImages < ActiveRecord::Migration
  def self.up
    change_table :service_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :service_images, :image
  end
end
