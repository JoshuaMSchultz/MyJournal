class Quote < ActiveRecord::Base
  has_paper_trail
  acts_as_taggable
  
  belongs_to :source
  
  scope :with_source_id, lambda { |id| where("source_id = ?", "#{id}") }
  
  def self.quote_authors
    authors = []
    Quote.all.each do |quote|
      authors << quote.author
    end
    authors.uniq!
  end
  
end
