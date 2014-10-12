# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "This is a comment on a specific post"
    author
    post
  end
end
