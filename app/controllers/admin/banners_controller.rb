class Admin::BannersController < ApplicationController

 layout 'admin'
	before_action :confirm_logged_in
	def index
		@banners = Banner.all
		@banner = Banner.new
	end
	def new
		@banner = Banner.new
		@banner_count =Banner.count + 1
	end 
	def create
		@banner = Banner.new(banner_params) 
		if @banner.save
			flash[:notice] = 'У нас новый баннер!'
      redirect_to admin_banners_path       

		else
			render ('new')
		end
	end

	def edit
		@banner = Banner.find(params[:id])
		@banner_count = Banner.count
	end

	def update
		@banner = Banner.find params[:id]

		if @banner.update_attributes(banner_params)
			flash[:notice] = "обновили!"
			redirect_to admin_banners_path
		else
			render :edit
		end

	end

	def show
		@banner= Banner.find(params[:id])
	end

	def delete
		@banner = Banner.find(params[:id])
	end

	def destroy
		banner = Banner.find(params[:id]).destroy
		flash[:notice] = "гуд бай баннер"
		redirect_to(:action => 'index')
	end

	private

	def banner_params
		params.require(:banner).permit [:position, :title, :permalink, :image1, :image2]
	end
end

