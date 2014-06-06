module ThoughtsHelper
  
  def add_links_to
    @linked_body = self.gsub(/\[\[/, "<%= link_to '")
    @linked_body = self.gsub(/s\|s/, "', ")
    @linked_body = self.gsub(/\]\]/, "%>")
    return @linked_body
  end
  
end
