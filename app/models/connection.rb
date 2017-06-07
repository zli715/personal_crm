class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  has_many :old_interactions, :foreign_key => "connect_id", :dependent => :destroy
  has_one :latest_interaction, :foreign_key => "connect_id", :dependent => :destroy
end
