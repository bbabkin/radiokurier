class PublicController < ApplicationController
  def home
    @page_section_content = PageSectionContent.find_by(page_section_key: 'home', locale: 'en')
    @audio_entry = AudioEntry.order(date: :desc).first
    @guests = Performer.where(role: [1]).order(position: :asc).all
    @talents = Performer.where(role: [2]).order(position: :asc).all
    
    

  end
  def about
    @page_section_content = PageSectionContent.find_by(page_section_key: 'about', locale: 'en')
  end
  def archive
    @page_section_content = PageSectionContent.find_by(page_section_key: 'archive', locale: 'en')
    @audio_entries = AudioEntry.order(date: :desc).all
  end
  def advert
    @page_section_content = PageSectionContent.find_by(page_section_key: 'advert', locale: 'en')
  end
  def contact
    @page_section_content = PageSectionContent.find_by(page_section_key: 'contact', locale: 'en')
  end

  def privacypoicy
    @page_section_content = PageSectionContent.find_by(page_section_key: 'privacy', locale: 'en')
	  
  end
  def termsconditions
	  @page_section_content = PageSectionContent.find_by(page_section_key: 'terms', locale: 'en')


  end
end
