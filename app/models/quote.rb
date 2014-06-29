class Quote < ActiveRecord::Base
  has_paper_trail
  
  belongs_to :source
end
