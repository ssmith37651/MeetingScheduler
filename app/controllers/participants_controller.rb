class ParticipantsController < ApplicationController
	def index
		@participants = Participant.all
	end

	def new
		
	end

	def create
		participant = Participant.new(participant_params)
		if participant.save
			redirect_to "/participants"
		else
			flash[:errors] = participant.errors.full_messages
			redirect_to "/participants/new"
		end
	end
	def show
		@meetings = Participant.find(params[:id]).meetings
	end

	private
	def participant_params
		params.require(:participant).permit(:first_name, :last_name, :email_address)
	end
end
