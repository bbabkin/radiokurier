class PublicController < ApplicationController
  def home
    @page_section_content = PageSectionContent.find_by(page_section_key: 'home', locale: 'en')
  end
  def about
    @page_section_content = PageSectionContent.find_by(page_section_key: 'about', locale: 'en')
  end
    def archive
    @page_section_content = PageSectionContent.find_by(page_section_key: 'archive', locale: 'en')
  end
    def advert
    @page_section_content = PageSectionContent.find_by(page_section_key: 'advert', locale: 'en')
  end
  def contact
    @page_section_content = PageSectionContent.find_by(page_section_key: 'home', locale: 'en')
  end

  def privacypoicy
    @page_section_content = PageSectionContent.find_by(page_section_key: 'privacy', locale: 'en')
	  
  end
  def termsconditions
	  @page_section_content = PageSectionContent.find_by(page_section_key: 'terms', locale: 'en')


  end
end
