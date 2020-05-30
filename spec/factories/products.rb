FactoryBot.define do
  factory :product do
    user
    name             {"Tシャツ"}
    text             {"サイズが合わず、新品同様です。"}
    brand            {"モダン"}
    category
    status           {"目立った傷や汚れなし"}
    shippingcharges  {"送料込み(出品者負担)"}
    shipping_area    {"福岡県"}
    days_to_ship     {"2~3日で発送"}
    price            {"1500"}

    factory :product_image do
      after(:build) do |product|
        product.images << build(:image, product: product)
      end
    end

    factory :product_images do
      after(:build) do |product|
        product.images << build_list(:image, 11, product: product)
      end
    end
    factory :product_10images do
      after(:build) do |product|
        product.images << build_list(:image, 10, product: product)
      end
    end
  end
end