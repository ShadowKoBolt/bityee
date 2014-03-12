FactoryGirl.define do
  factory :bityee_section, class: Bityee::Section do
    sequence(:name) {|n| "Section #{n}" }    

    page { FactoryGirl.create(:bityee_page) }
  end
end
