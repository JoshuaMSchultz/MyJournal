class AddTopicIdToThoughts < ActiveRecord::Migration
  def change
    add_column :thoughts, :topic_id, :integer
  end
end
