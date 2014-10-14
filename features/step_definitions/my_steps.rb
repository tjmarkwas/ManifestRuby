require 'watir-webdriver'
def open_browser
  @browser=Watir::Browser.new :firefox
end

def open_manifestcorp
  @browser.goto "manifestcorp.com"
end

def open_opportunities
  @browser.link(text: "OPPORTUNITIES").click
end



def generate_some_news
  # code here
end

Given(/^there is some news$/) do
  generate_some_news

end

When(/^I select the news$/) do
  open_browser
  open_manifestcorp
  open_news
end

Then(/^the News is present for reading$/) do
  there_is_something
  there_are_dates
  there_are_titles
end


Given(/^there are some job postings$/) do
  generate_job_postings
end

When(/^I search for jobs by state$/) do
  open_browser


  open_manifestcorp
  open_opportunities
  select_state
  run_search
end

Then(/^the jobs in that state will be listed$/) do
  there_is_something
  there_is_search_criteria
  there_are_job_titles
  there_are_locations
  there_is_category
  there_is_type
end
