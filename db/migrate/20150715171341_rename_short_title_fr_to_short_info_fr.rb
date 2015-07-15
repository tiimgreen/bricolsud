class RenameShortTitleFrToShortInfoFr < ActiveRecord::Migration
  def change
    rename_column :services, :short_title_fr, :short_info_fr
  end
end
