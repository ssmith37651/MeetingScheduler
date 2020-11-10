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

	def participants
		@meetings = Participant.find(params[:id]).meetings
	end

	def edit
		@participant = Participant.find(params[:id])
	end

	def update
		participant = Participant.find(params[:id])
		if participant.update(participant_params)
			redirect_to "/participants"
		else
			flash[:errors] = participant.errors.full_messages
			redirect_to "/participants/#{participant.id}/edit"
		end
	end

	def destroy
		participant = Participant.find(params[:id])
		participant.destroy
		redirect_to "/participants"
	end

	private
	def participant_params
		params.require(:participant).permit(:first_name, :last_name, :email_address)
	end
end
