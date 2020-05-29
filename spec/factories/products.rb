FactoryBot.define do
  factory :product do
    image            Rack::Test::Uploadedfile.new(File.join(Rails.root, 'spec/fixtures/test_image.jpg'))
    name             {"Tシャツ"}
    text             {"サイズが合わず、新品同様です。"}
    status           {"未使用に近い"}
    shippingcharges  {"送料込み(出品者負担)"}
    shipping_area    {"福岡県"}
    days_to_ship     {"2~3日で発送"}
    price            {"1500"}
  end
end
