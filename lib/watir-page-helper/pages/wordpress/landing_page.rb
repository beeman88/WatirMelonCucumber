require 'watir-page-helper'

module WatirPageHelper::Wordpress
    module LandingPage
    extend WatirPageHelper::ClassMethods
    
    expected_title "WordPress.com"
    expected_element :nav, :id => "dash-nav-sub"

    li :username, :text => "bbbelyk"
    li :sign_out, :text => "Sign Out"

    def logged_in?
      self.username_li.exists? &&
      self.sign_out_li.exists?
    end
  end
end
