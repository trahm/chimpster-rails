require 'spec_helper'

describe "ChimpsterRails" do
  it "should allow setting an api key" do

#    Chimpster.stub!(:send_through_chimpster)
    ActionMailer::Base.chimpster_settings = {:api_key => '29cb34f3d70ae39342eb41b712b58bcb-us1'}
    ActionMailer::Base.chimpster_settings[:api_key].should == '29cb34f3d70ae39342eb41b712b58bcb-us1'
    Chimpster.should_receive(:api_key=).with('29cb34f3d70ae39342eb41b712b58bcb-us1')
    TestMailer.simple_message.deliver
  end

#  it "should use chimpster for delivery" do
#    Chimpster.should_receive(:send_through_chimpster) do |message|
#      message.subject.should == "hello"
#    end
#    TestMailer.simple_message.deliver
#  end
#
#  it "should allow tagging of message" do
#    Chimpster.should_receive(:send_through_chimpster) do |message|
#      message.tag.to_s.should == "delivery"
#    end
#    TestMailer.tagged_message.deliver
#  end
#
#  it "should work with multipart messages" do
#    Chimpster.should_receive(:send_through_chimpster) do |message|
#        message.should be_multipart
#        message.body_text.strip.should == "hello"
#        message.body_html.strip.should == "<b>hello</b>"
#    end
#    TestMailer.multipart_message.deliver
#  end
end