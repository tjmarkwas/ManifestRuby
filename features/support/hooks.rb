Before do
  @browser=Watir::Browser.new
end

After do |open_browser|
  @browser.close
end

After do |scenario|
  7/0
end

After do |scenario|
  'nothing'
end
