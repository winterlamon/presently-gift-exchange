class Swap < ApplicationRecord
  belongs_to :event
  belongs_to :giver, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :gift
end
