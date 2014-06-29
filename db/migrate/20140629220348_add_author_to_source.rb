class AddAuthorToSource < ActiveRecord::Migration
  def change
    add_column :sources, :author, :string
  end
end
