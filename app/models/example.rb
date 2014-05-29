class Example < ActiveRecord::Base
  belongs_to :Thought
  
  validates :body, presence:true
end
