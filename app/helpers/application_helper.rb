module ApplicationHelper
  
  def with_topic_id(topic_id)
   # lambda { |id| where("topic_id = ?", "#{id}") }
    self.where("topic_id = ?", topic_id)
  end
  
  def with_source_id
    lambda { |id| where("source_id = ?", "#{id}") }
  end
  
end
