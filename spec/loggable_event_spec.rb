require 'spec_helper'
describe 'LoggableEvent' do
  before(:each) do
     @test_model = TestModel.create(:name => 'Ticket') 
     User.create(:name => 'Test User')
  end
  
  describe "#log" do
    it "should respond to :log" do
      @test_model.should respond_to(:log)
    end
    
    it "should be able to create a log" do
      @test_model.log('Test Event', 'This is the content')
      @test_model.logs.should include(Log.find_by_event('Test Event')) 
    end
  end
  
  describe ".logs_by_user" do
    it "should return all logs for the specified user" do
      @test_model.log('Test Event', 'This is the content of test event')
      TestModel.logs_by_user(1).count.should eql(1)
    end
  end
  
  describe ".logs_by_event" do
    it "should return all logs for the given event" do
      4.times{ @test_model.log('Test Event 1')}
      TestModel.logs_by_event('Test Event 1').count.should eql(4)
    end
  end
  
end
