class AddSourceIdToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :source_id, :integer
  end
end
