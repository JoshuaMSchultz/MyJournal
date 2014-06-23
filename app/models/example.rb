class Example < ActiveRecord::Base
  has_paper_trail
  
  belongs_to :thought 
  belongs_to :source
  
  validates :body, presence:true
  
  scope :with_source_id, lambda { |id| where("source_id = ?", "#{id}") }
  
  
end
