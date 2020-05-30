FactoryBot.define do
  factory :image do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image.jpg'))}
  end

  factory :image_10 do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image1.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image2.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image3.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image4.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image5.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image6.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image7.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image8.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image9.jpg'))}
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image10.jpg'))}
  end
end
