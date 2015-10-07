class Admin::PerformersController < ApplicationController

 layout 'admin'
	before_action :confirm_logged_in
	def index
		@performers = Performer.all
		@performer = Performer.new
	end
	def new
		@performer = Performer.new
		@performer_count =Performer.count + 1
	end 
	def create
		@performer = Performer.new(audio_entry_params) 
		if @performer.save
			flash[:notice] = 'У нас новый исполнитель!'
      redirect_to admin_performers_path       

		else
			render ('new')
		end
	end

	def edit
		@performer = Performer.find(params[:id])
		@performer_count = Performer.count
	end

	def update
		@performer = Performer.find params[:id]

		if @performer.update_attributes(audio_entry_params)
			flash[:notice] = "обновили!"
			redirect_to admin_performers_path
		else
			render :edit
		end

	end

	def show
		@performer= Performer.find(params[:id])
	end

	def delete
		@performer = Performer.find(params[:id])
	end

	def destroy
		performer = Performer.find(params[:id]).destroy
		flash[:notice] = "гуд бай исполнитель"
		redirect_to(:action => 'index')
	end

	private

	def performer_params
		params.require(:performer).permit [:type, :permalink, :title, :description, :position, :image]
	end
end

