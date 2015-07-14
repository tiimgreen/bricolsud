class AddFontClassToServices < ActiveRecord::Migration
  def change
    add_column :services, :font_class, :string
  end
end
