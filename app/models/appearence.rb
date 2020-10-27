class Appearence < ApplicationRecord
  belongs_to :meeting
  belongs_to :participant
end
