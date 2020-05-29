FactoryBot.define do
  factory :image do
    image { Rack::Test::Uploadedfile.new(File.join(Rails.root, 'spec/fixtures/test_image.jpg'))}
    end
end
