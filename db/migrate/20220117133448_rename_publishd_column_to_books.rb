class RenamePublishdColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :publishd_on, :published_on
  end
end
