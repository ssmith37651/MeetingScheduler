class InviteController < ApplicationController
	def invite
		@meetings = Meeting.all
		@participants = Participant.all
		return @meetings, @participants
	end

	def create
		invite = Appearence.new(invite_params)
		if invite.save
			redirect_to "/meetings"
		else
			flash[:errors] = invite.errors.full_messages
			redirect_to "/meetings/:id/invite"
		end
	end

	private
	def invite_params
		params.require(:invite).permit(:meeting_id, :participant_id)
	end
end
