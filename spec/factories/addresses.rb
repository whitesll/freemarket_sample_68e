FactoryBot.define do
  
  factory :address do
    address_full_width_last_name    {"西浦"}
    address_full_width_first_name   {"恵之郎"}
    address_hira_last_name          {"にしうら"}
    address_hira_first_name         {"けいしろう"}
    zip_code                        {"123-4567"}
    prefectures                     {"福岡県"}
    city                            {"福岡県"}
    address                         {"福岡県"}
  end
end