Então("devo ver {string} na área logada") do |expect_name|
  expect(@app.home.logged_user).to eql expect_name
end