load 'features/support/helper/javascript_pageload_helper'
load 'features/support/page/home_page_login'

Given(/^I navigate to Betway$/) do
  @page = HomePageLogin.new
  @page.load
  wait_for_page_load_to_complete
end

When(/^i submite the login form$/) do
  @page.FillInformAndSubmit
end

Then(/^I check that I am in the lobby$/) do
  expect(@page.current_url).to eq"https://sports.betway.com/"

end