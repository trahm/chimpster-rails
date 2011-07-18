#
# This module is only used for Rails 2.
#
module ChimpsterDeliveryMethod
  
  module ClassMethods
    
    def chimpster_api_key=(value)
      Chimpster.api_key = value
    end
    
  end
  
  def self.included(base)
    base.extend(ClassMethods)
    
    base.class_eval do      
      alias_method_chain :create_mail, :chimpster_extras
    end
  end
  
  def perform_delivery_chimpster(message)
    Chimpster.send_through_chimpster(message)
  end

  def tag(value)
    @tag = value
  end
  
  def chimpster_attachments(value)
    @attachments = value
  end

  def create_mail_with_chimpster_extras
    create_mail_without_chimpster_extras.tap do |mail|
      mail.tag = @tag                          if @tag
      mail.chimpster_attachments = @attachments if @attachments
    end
  end
  
end