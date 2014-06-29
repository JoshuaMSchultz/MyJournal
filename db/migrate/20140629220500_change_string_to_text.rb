class ChangeStringToText < ActiveRecord::Migration
  def change
    remove_column :quotes, :quote
    add_column :quotes, :quote, :text
  end
end
