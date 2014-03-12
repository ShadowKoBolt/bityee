FactoryGirl.define do
  factory :bityee_page, class: Bityee::Page do
    sequence(:name) {|n| "Page #{n}" }
    sequence(:path) {|n| "path-#{n}" }
  end
end
