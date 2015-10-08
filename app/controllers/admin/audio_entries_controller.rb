
class Admin::AudioEntriesController < ApplicationController

 layout 'admin'
	before_action :confirm_logged_in
	def index
		@audio_entries = AudioEntry.all
		@audio_entry = AudioEntry.new
	end
	def new
		@audio_entry = AudioEntry.new
		@audio_entry_count =AudioEntry.count + 1
	end 
	def create
		@audio_entry = AudioEntry.new(audio_entry_params) 
		if @audio_entry.save
			flash[:notice] = 'выпуск родился!'
      redirect_to admin_audio_entries_path       

		else
			render ('new')
		end
	end

	def edit
		@audio_entry = AudioEntry.find(params[:id])
		@audio_entry_count = AudioEntry.count
	end

	def update
		@audio_entry = AudioEntry.find params[:id]

		if @audio_entry.update_attributes(audio_entry_params)
			flash[:notice] = "обновили!"
			redirect_to admin_audio_entries_path
		else
			render :edit
		end

	end

	def show
		@audio_entry= AudioEntry.find(params[:id])
	end

	def delete
		@audio_entry = AudioEntry.find(params[:id])
	end

	def destroy
		audio_entry = AudioEntry.find(params[:id]).destroy
		flash[:notice] = "выпуска болше нет..."
		redirect_to(:action => 'index')
	end

	private

	def audio_entry_params
		params.require(:audio_entry).permit [:date, :permalink, :permaogg, :title, :description, :image]
	end
end
