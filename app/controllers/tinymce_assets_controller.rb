class TinymceAssetsController < ApplicationController
  respond_to :json

  def create
    geometry = Paperclip::Geometry.from_file params[:file]
    image    = Image.create params.permit(:file, :alt, :hint)
    render json: {
      image: {
        url:    image.file.url,
        height: geometry.height.to_i,
        width:  geometry.width.to_i
      }
    }, layout: false, content_type: "text/html"
  end
  def s3_credentials
    {:bucket => "radiokurier", :access_key_id => ENV['AWS_ID'], :secret_access_key => ENV['AWS_SECRET']}
  end
end


