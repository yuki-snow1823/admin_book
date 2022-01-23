class CreateBookAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :book_authors do |t|
      t.string :book
      t.string :references
      t.string :author
      t.string :references

      t.timestamps
    end
  end
end
