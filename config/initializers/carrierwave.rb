CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIRNDAI5GKDDSL36A',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'ap-northeast-1'                  # optional, defaults to 'us-east-1'
#    :host                   => 's3.example.com',             # optional, defaults to nil
#    :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.storage = :fog
  config.fog_directory  = 'sl-plan'                     # required
#  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end