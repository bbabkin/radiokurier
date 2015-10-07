class AudioEntry < ActiveRecord::Base
	mount_uploader :permalink, AudioUploader
	process_in_background :permalink
end
