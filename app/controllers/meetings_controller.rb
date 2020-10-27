class MeetingsController < ApplicationController
	def index
		@meetings = Meeting.all
	end

	def new
		
	end

	def create
		meeting = Meeting.new(meeting_params)
		if meeting.save
			redirect_to "/meetings"
		else
			flash[:errors] = meeting.errors.full_messages
			redirect_to "/meetings/new"
		end
	end

	def show
		@participants = Meeting.find(params[:id]).participants
	end

	private
	def meeting_params
		params.require(:meeting).permit(:meeting_name, :description, :location)
	end
end
