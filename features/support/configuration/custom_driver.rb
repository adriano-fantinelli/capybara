module Configuration
  class CustomDriver
    attr_reader :selenium_driver
    def initialize(mode, device)
      @selenium_driver = if mode == 'remote'
                           Capybara::Selenium::Driver.new(
                           @app,
                           browser: :remote,
                           url: 'http://zalenium2-qa-online.ocp-eqx.dc.nova/wd/hub', 
                           desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(device.hash_options)
                           )
                         else
                           Capybara::Selenium::Driver.new(@app, browser: :chrome, options: device.options)
                         end
    end
  end
end
