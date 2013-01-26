require 'watir-page-helper'

module WatirPageHelper::Wordpress
  module HomePage
    extend WatirPageHelper::ClassMethods

    direct_url "http://www.wordpress.com"
    expected_title "WordPress.com - Get a Free Blog Here"

    text_field :username, :name => "log"
    text_field :password, :name => "pwd"    
    button :sign_in, :value => 'Sign in'

    def login username, password
      self.username_text_field.when_present.set username
      self.password_text_field.when_present.set password
      self.sign_in_button.when_present.click
    end
  end
end
