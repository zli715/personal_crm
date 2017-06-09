class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  has_many :old_interactions, :foreign_key => "connect_id", :dependent => :destroy
  has_many :latest_interactions, :foreign_key => "connect_id", :dependent => :destroy
end
