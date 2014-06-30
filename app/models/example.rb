class Example < ActiveRecord::Base
  has_paper_trail
  acts_as_taggable
  
  belongs_to :thought 
  belongs_to :source
  
  validates :body, presence:true
  
  scope :with_source_id, lambda { |id| where("source_id = ?", "#{id}") }
  
  
end
