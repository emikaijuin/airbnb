CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AMAZON_ACCESS_KEY'],                        # required
    aws_secret_access_key: ENV['AMAZON_SECRET_ACCESS_KEY'],                        # required
    region:                ENV['AMAZON_REGION'],                  # optional, defaults to 'us-east-1'
  }
  config.storage= :fog
  config.fog_directory  = ENV['AMAZON_BUCKET_NAME']                                   # required
  
end