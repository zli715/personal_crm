class OldInteraction < ApplicationRecord
  belongs_to :connect, :class_name => "Connection"
end
