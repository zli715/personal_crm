class Contact < ApplicationRecord
  has_many :connections, :dependent => :destroy
end
