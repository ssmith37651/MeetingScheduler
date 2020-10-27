class Participant < ApplicationRecord
	has_many :appearences
	has_many :meetings, through: :appearences
	validates :first_name, :last_name, :email_address, presence: true
end
