class Movie < ActiveRecord::Base
  validates :title, :uniqueness => { :scope => :year }
end
