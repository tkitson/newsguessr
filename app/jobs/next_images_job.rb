# class NextImagesJob < ApplicationJob
#   queue_as :default

#   # def initialize
#   #   @folder_counter_index = 0
#   # end

#   def perform
#     # @folder_counter_index = $redis.get(@folder_counter_index)
#     # p "performing task"
#     # p @folder_counter_index
#     folders = Dir.glob("app/assets/images/papers/*")
#     byebug
#     current_folder = folders[@folder_counter_index]
#     @new_images = Dir.glob("#{current_folder}/*")
#     @folder_counter_index += 1
#     p @new_images
#   end
# end
