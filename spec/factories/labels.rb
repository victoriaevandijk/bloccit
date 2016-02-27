include RandomData

 FactoryGirl.define do
  sequence(:name) { |n| "LabelName#{n}"}
  
   factory :label do
     name RandomData.random_name
   end
 end