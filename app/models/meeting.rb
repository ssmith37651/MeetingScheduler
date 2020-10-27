class Meeting < ApplicationRecord
	has_many :appearences
	has_many :participants, through: :appearences
	validates :meeting_name, :description, :location, presence: true
end
