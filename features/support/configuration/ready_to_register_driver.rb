module Configuration
  class ReadyToRegisterDriver
    attr_reader :driver
    def initialize(app, **kwargs)
      @app    = app
      @device = Device.new(kwargs[:device], kwargs[:graphic_mode])
      @driver = CustomDriver.new(kwargs[:mode], @device).selenium_driver
    end
  end
end
