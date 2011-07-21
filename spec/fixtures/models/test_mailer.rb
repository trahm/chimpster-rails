class TestMailer < ActionMailer::Base
  default :subject  => 'hello', 
          :to       => 'mike@fotomoto.com',
          :from     => 'mike@fotomoto.com'
          
  def simple_message
    mail
  end

  def tagged_message
    mail(:tag => 'delivery')
  end

  def multipart_message
    mail(:subject => "Your invitation to join Mixlr.") do |format|
      format.text
      format.html
    end
  end
end