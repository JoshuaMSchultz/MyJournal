class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def add_links_to
    self.gsub(/\[\[/, "<%= link_to '")
    self.gsub(/s\|s/, "', ")
    self.gsub(/\]\]/, "%>")
  end
  
end
