require 'watir-page-helper'

module WatirPageHelper::Wordpress
    module LoginFailedPage
    extend WatirPageHelper::ClassMethods
    
    expected_title /WordPress.*/  # WordPress.com > Log In
    expected_element :div, :id => "login"

    div :err_msg, :id => "login_error"

    def error_message?
      self.err_msg_div.exists? 
    end
  end
end
