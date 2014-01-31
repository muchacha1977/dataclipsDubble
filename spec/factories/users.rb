FactoryGirl.define do
  factory :user do 
    #name 'Test User'
    email 'example@example.com'
    password 'changeme'
    #password_confirmation 'changeme'
    terms_and_conditions  true # or true

    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end
 #initialize_with { new(email, password,terms_and_conditions) } # add this line
end