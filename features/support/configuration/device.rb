module Configuration
  class Device
    attr_reader :options

    def initialize(device, graphic_mode)
      @options = Selenium::WebDriver::Chrome::Options.new
      mobile_options   if device       == 'mobile'
      headless_options if graphic_mode == 'headless'
      default_options
    end

    def hash_options
      @options.options
    end

    def mobile_options
      mobile_emulation = { user_agent: 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1' }
      @options.add_emulation(mobile_emulation)
    end

    def headless_options
      @options.add_argument('headless')
      @options.add_argument('disable-gpu')
    end

    def default_options
      @options.add_argument('ignore-certificate-errors')
      @options.add_argument('disable-popup-blocking')
      @options.add_argument('disable-web-security')
      @options.add_argument('disable-infobars')
      @options.add_argument('--start-maximized')
    end
  end
end
