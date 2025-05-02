FactoryBot.define do
  factory :schedule do
    title { "MyString" }
    start_date { "2025-04-27" }
    end_date { "2025-04-27" }
    all_day { false }
    memo { "MyText" }
  end
end
