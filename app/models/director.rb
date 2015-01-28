class Director < ActiveRecord::Base
  validates :name, :uniqueness => { :scope => :dob }
end
