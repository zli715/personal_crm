class LatestInteraction < ApplicationRecord
  belongs_to :user
  belongs_to :connect, :class_name => "Connection"
end
