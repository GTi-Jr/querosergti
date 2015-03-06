CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI4EQJKNLUOXTH6QQ',                        # required
    aws_secret_access_key: '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',                        # required
  }
  config.fog_directory  = 'project.gti'                          # required
end