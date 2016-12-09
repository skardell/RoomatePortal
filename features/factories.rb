FactoryGirl.define do
  
  factory :household do
    
  end
  
  factory :user do
    email 'email@email.com'
    password 'password'
    household FactoryGirl.create(:household)

    # if needed
    # is_active true
  end
  

end