class Example < ActiveRecord::Base
  belongs_to :thought 
  belongs_to :source
  
  validates :body, presence:true
  
  scope :with_source_id, lambda { |id| where("source_id = ?", "#{id}") }
  
  
end
