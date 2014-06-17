class Thought < ActiveRecord::Base
  has_many :examples
  belongs_to :topic
  
  validates :body, presence: true
  
  scope :with_topic_id, lambda { |id| where("topic_id = ?", "#{id}") }
  
  def typed_thought
    a = body.to_s
    @typed_thought_link = a.match(/\[\[(\D+)\|(\D+)\]\]/)
    @thought_link = @typed_thought_link[1].strip
    @text_shown = @typed_thought_link[2].strip
  end
  
  def typed_thought_id
    @thought_link_id = Thought.where(:title => @thought_link).first[:id]
  end
  
  def body_with_links
    a = body.to_s
    a.gsub!(/\[\[(\D+)\|(\D+)\]\]/, "<a href='http://localhost:3000/thoughts/#{@thought_link_id}'>#{@text_shown}</a>")
  end
   
end
