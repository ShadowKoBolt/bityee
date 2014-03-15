FactoryGirl.define do
  factory :bityee_section, class: Bityee::Section do
    sequence(:name) {|n| "Section #{n}" }    
  end
end
