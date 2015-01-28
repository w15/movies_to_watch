class Actor < ActiveRecord::Base
  validates :name, :uniqueness => { :scope => :dob }
end
