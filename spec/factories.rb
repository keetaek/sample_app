# By using the symbol ':user', we get Factory Girl to simulate the User model

Factory.define :user do |user|
  user.name                   "Keetaek Hong"
  user.email                  "keetaek@example.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |m|
  m.content "Foo Bar content"
  m.association :user
end
