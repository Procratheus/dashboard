require "refile/fog"

credentials = {
  provider: "AWS",
  aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
  directory: ENV["AWS_BUCKET"]
}

Refile.configure do |config|
  config.cache = Refile::Fog::Backend.new(prefix: "cache", **credentials)
  config.cache = Refile::Fog::Backend.new(prefix: "store", **credentials)
end