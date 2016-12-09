FactoryGirl.define do
  
  factory :household do
    name "testHousehold"
    code 411
  end
  
  factory :user do
    email 'email@email.com'
    password 'password'
    household FactoryGirl.create(:household)
  end

end