FactoryBot.define do
  factory :image do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/test_image.jpg'))}
  end
end
