class Source < ActiveRecord::Base
  has_many :examples
  has_many :quotes

end
