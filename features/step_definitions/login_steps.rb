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
    # page.number_search_results.should >= exp_num_results.gsub(",","").to_i
  end
end

Then /^I should see at most ([\d,]+) results$/ do |exp_num_results|
  on @site, :results_page do |page|
    page.number_search_results.should <= exp_num_results.gsub(",","").to_i
  end
end

When /^I convert (.+)$/ do |conversion_statement|
  on @site, :home_page do |page|
    page.search_for "convert #{conversion_statement}"
  end
end

Then /^I should see the conversion result "([^"]*)"$/ do |exp_conversion_result|
  on @site, :results_page do |page|
    page.conversion_result.gsub('metres', 'meters').should == exp_conversion_result
  end
end