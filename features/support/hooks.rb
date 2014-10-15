Before do
  @browser=Watir::Browser.new
end

After do |open_browser|
  @browser.close
end

