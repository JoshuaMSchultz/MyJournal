class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.text :body
      t.integer :thought_id

      t.timestamps
    end
  end
end
