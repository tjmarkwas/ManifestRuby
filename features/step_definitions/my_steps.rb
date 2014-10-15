require 'watir-webdriver'
require 'page-object'
include PageObject::PageFactory

def open_manifestcorp
  visit ManifestMain
end

def open_news
  on(ManifestMain).news
end

def open_opportunities
  on(ManifestMain).opportunities
end

def select_state
  on(ManifestOpps).state= 'Ohio'
end

def run_search
  on(ManifestOpps).search
end

def generate_some_news
  # code here
end

def generate_job_postings
  # code here
end

Given(/^there is some news$/) do
  generate_some_news

end

When(/^I select the news$/) do
  #open_browser
  open_manifestcorp
  open_news
end

Then(/^the News is present for reading$/) do
  the_news= on(ManifestNews).all_news
  there_are_dates
  there_are_titles
end


Given(/^there are some job postings$/) do
  generate_job_postings
end

When(/^I search for jobs by state$/) do
  #open_browser
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
