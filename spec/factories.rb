FactoryGirl.define do
  factory(:user) do
    username('example')
    email('example@example.com')
    password('12345678')
    password_confirmation('12345678')
    admin(true)
  end
end
