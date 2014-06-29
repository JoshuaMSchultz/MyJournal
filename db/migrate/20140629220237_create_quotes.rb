class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quote
      t.string :author
      t.integer :source_id

      t.timestamps
    end
  end
end
