class AddLocaleVersionsToServices < ActiveRecord::Migration
  def change
    rename_column :services, :body, :body_en
    rename_column :services, :title, :title_en
    rename_column :services, :short_info, :short_info_en
    add_column :services, :body_fr, :text, default: ""
    add_column :services, :title_fr, :string, default: ""
    add_column :services, :short_title_fr, :string, default: ""
  end
end
