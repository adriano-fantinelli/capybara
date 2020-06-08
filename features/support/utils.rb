module Utils
  extend RSpec::Matchers

  # For each item of a given list
  # perform a given method call
  # and expect a given validation
  CALL_AND_ASSERT_FOR_EACH_IN_LIST = lambda do |list, a_method, validation|
    list.each do |item|
      expect(
        a_method.call(item)
      ).to validation
    end
  end

  def SITE_PRICE_TO_FLOAT(site_price)
    site_price.delete!('. R$')
    site_price.gsub!(',', '.')
    site_price.to_f
  end
  module_function :SITE_PRICE_TO_FLOAT

  def PERFORM_SELECT(select, option)
    select.click
    option.select_option
    select.click
  end
  module_function :PERFORM_SELECT

  def GO_TO_NEXT_PAGE(window)
    Capybara.page.switch_to_window(window)
  end
  module_function :GO_TO_NEXT_PAGE

  def RETRIEVE_SITE_META_DATA
    Capybara.page.execute_script 'return siteMetadata'
  end
  module_function :RETRIEVE_SITE_META_DATA
end
