# class ImageupdaterJob < ApplicationJob
#   queue_as :default

#   def initialize
#     @folder_counter_index = 0
#   end

#   def perform
#     # @folder_counter_index = $redis.get(@folder_counter_index)
#     p "performing task"
#     p @folder_counter_index
#     # folders = Dir.glob("assets/images/papers/*")
#     # current_folder = folders[folder_counter_index]
#     # @new_images = Dir.glob("#{current_folder}/*")
#     # Redis.incr(@folder_counter_index)
#     # @new_images
#   end

#   # Sidekiq::Cron::Job.create(name: 'ImageUpdaterJob - every 24 hours', cron: '0 0 * * *', class: 'ImageUpdaterJob')
# end
