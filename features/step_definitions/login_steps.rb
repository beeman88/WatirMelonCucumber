Given /^I am on the (.+) Home Page$/ do |site|
  @site = site.downcase
  visit @site, :home_page
end

When /^I enter (.+) and (.+)$/ do |username, password|
  on @site, :home_page do |page|
    page.login username, password
  end
end

Then /^I should see a Sign out menu item$/ do
  on @site, :landing_page do |page|
    page.logged_in?.should == true
  end
end

Then /^I should see an error message$/ do
  on @site, :login_failed_page do |page|
    page.error_message?.should == true
  end
end
