# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

Given /^i open Google home page$/ do
  i_open_google_home_page
end

When /^i search for "(.*)"$/ do |p1|
  i_search_for_p1(p1)
end

Then /^i see "(.*)" in page results$/ do |p1|
  i_see_p1_in_page_results(p1)
end
