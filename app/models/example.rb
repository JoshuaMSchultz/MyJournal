class Example < ActiveRecord::Base
  belongs_to :thought
  belongs_to :source
  
  validates :body, presence:true
end
