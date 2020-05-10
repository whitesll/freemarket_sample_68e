FactoryBot.define do
  
  factory :user do
    nickname     {"abe"}
    email        {"kkk@ttt"}
    password     {"0000000"}
    password_confirmation {"0000000"}
    full_width_last_name {"西浦"}
    full_width_first_name {"恵之郎"}
    hira_last_name    {"ニシウラ"}
    hira_first_name   {"ケイシロウ"}
    birth_date        {"1991-08-21"}
  end

end