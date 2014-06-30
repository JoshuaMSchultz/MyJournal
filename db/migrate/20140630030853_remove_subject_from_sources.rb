class RemoveSubjectFromSources < ActiveRecord::Migration
  def change
    remove_column :sources, :subject
  end
end
