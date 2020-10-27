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
			redirect_to "/meetings/new"
		end
	end

	private
	def meeting_params
		params.require(:meeting).permit(:meeting_name, :description, :location)
	end
end
