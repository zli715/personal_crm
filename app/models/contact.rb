class Contact < ApplicationRecord
  has_many :connections, :dependent => :destroy
  validates :first_name, :presence => true, :uniqueness => { :scope => :last_name, :scope => :birthday }
end
