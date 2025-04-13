# メインのサンプルユーザーを1人作成する
User.create!(
  name: "Example User",
  email: "example@railstutorial.org",
  password: "foobar1234567",
  password_confirmation: "foobar1234567"
)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password1234567"
  User.create!(name: name,
               email: email,
               password:              password,
               password_confirmation: password)
end
