CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      =>  ENV['AWS_ID'],       # required
    :aws_secret_access_key  => ENV['AWS_SECRET'],       # required
  }
  config.fog_directory  = 'radiokurier' # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
end

