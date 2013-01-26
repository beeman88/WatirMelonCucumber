require 'watir-page-helper'

module WatirPageHelper::Wordpress
  module HomePage
    extend WatirPageHelper::ClassMethods

    # no country redirect link, since travis-ci ends up getting sent to the german site
    direct_url "http://www.wordpress.com"
    expected_title "WordPress.com - Get a Free Blog Here"

    text_field :username, :name => "log"
    text_field :password, :name => "pwd"    
    button :sign_in, :value => 'Sign nn'

    def login_in username, password
      self.username_text_field.when_present.set username
      self.password_text_field.when_present.set password
      # self.username_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
    end
  end
end
