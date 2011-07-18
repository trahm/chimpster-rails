require 'action_mailer'
require 'chimpster'
require 'chimpster_delivery_method'

module ChimpsterInstaller
  extend self
  
  def auto_detect_and_install
      install_in_rails_3
  end


  
  def install_in_rails_3
    ActionMailer::Base.add_delivery_method :chimpster, Mail::Chimpster, :api_key => nil
#    Mail::Message.send(:include, Chimpster::AttachmentsFixForMail)
  end
  
end

ChimpsterInstaller.auto_detect_and_install