class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :medium
      t.string :name
      t.string :subject

      t.timestamps
    end
  end
end
