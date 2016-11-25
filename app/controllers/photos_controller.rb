class PhotosController < ApplicationController

	def index
	end

	def show
		respond_to :html, :js
	end

	def new
		@photo = Photo.new
	end

	def create
		p "*****************"
		p params
		p "*****************"
		@photo = Photo.new(params[:photo])
		if @photo.save
			redirect_to @photo
		else
			render :'admins/1/photos/new'
		end
	end

	def update
	end

	def destroy
	end

end
