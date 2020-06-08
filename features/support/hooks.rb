Before do
  @app = App.new
end

After do |scenario|
  temp_shot = page.save_screenshot("allure-results/temp_shot.png")
  Allure.add_attachment(name: scenario.name, source: File.open(temp_shot, "rb"), type: Allure::ContentType::PNG)
end