class Admin::PageSectionContentsController < ApplicationController
  layout 'admin'

  def index
    @page_section_contents = PageSectionContent.all
    @page_section_content = PageSectionContent.new
  end
  
  def new
    @page_section_contents = PageSectionContent.all
    @page_section_content = PageSectionContent.new

  end

  def create
    @page_section_contents = PageSectionContent.all
    @page_section_content = PageSectionContent.new(page_section_content_params)
    if @page_section_content.save
      flash[:notice] = "Created successfully"
      redirect_to admin_page_section_contents_path
    else
      redirect_to admin_page_section_contents_path

    end
  end
  before_action :confirm_logged_in
  def edit
    @page_section_content = PageSectionContent.find (params[:id]) 
  end

  def update
    @page_section_content = PageSectionContent.find (params[:id])

    if @page_section_content.update_attributes page_section_content_params
      flash[:notice] = "Updated successfully"
      render :edit
    else
      render :edit
    end

  end


  private

  def page_section_content_params
    params.require(:page_section_content).permit [:content, :page_section_key]
  end
end

