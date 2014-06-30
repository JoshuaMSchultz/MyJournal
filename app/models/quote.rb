class Quote < ActiveRecord::Base
  has_paper_trail
  acts_as_taggable
  
  belongs_to :source
end
