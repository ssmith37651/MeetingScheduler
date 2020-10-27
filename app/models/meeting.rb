class Meeting < ApplicationRecord
	validates :meeting_name, :description, :location, presence: true
end
