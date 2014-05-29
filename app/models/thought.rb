class Thought < ActiveRecord::Base
  has_many :examples
  
  validates :body, presence: true
end
