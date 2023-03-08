FactoryBot.define do
  factory :newspaper do
    # You can set the attributes for your newspaper here
    # For example:
    date { "01-01-2022" }
    live { true }

    after(:build) do |newspaper|
      # You can use the `fixture_file_upload` method to upload test files for your photos
      # The `attach` method will attach the files to the `photos` association
      newspaper.photos.attach(
        io: File.open('app/assets/images/test_img/test_1.jpeg'),
        filename: 'my_image_1.jpg',
        content_type: 'image/jpeg'
      )
      newspaper.photos.attach(
        io: File.open('app/assets/images/test_img/test_2.jpeg'),
        filename: 'my_image_2.jpg',
        content_type: 'image/jpeg'
      )
    end
  end
end
