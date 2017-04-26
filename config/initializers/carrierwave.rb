CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = "faithfulword"
  config.aws_acl    = 'public-read'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:     "AKIAJDEGZXDJ7GR7GTUA",
    secret_access_key: "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",
    region:            "us-west-1" # Required
  }
end