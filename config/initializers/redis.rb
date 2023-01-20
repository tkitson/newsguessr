# $redis = Redis.new

# # url = ENV["redis://localhost:6379/"]
# url = "redis://localhost:6379/"

# if url
#   Sidekiq.configure_server do |config|
#     config.redis = { url: url }
#   end

#   Sidekiq.configure_client do |config|
#     config.redis = { url: url }
#   end
#   $redis = Redis.new(:url => url)
# end
