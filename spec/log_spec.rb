require 'spec_helper'
describe Log do
  before(:each) do
    @test_model = TestModel.create(:name => 'Testing Log Model')
    User.create(:name => 'Test User')
  end
  describe "by_event" do
    it "should return logs by matching events" do
      @test_model.log('Test Event 2')
      @test_model.logs.by_event('Test Event 2').count.should eql(1)
    end
  end

  describe "by_user" do
    it "should return logs created by specified user" do
      @test_model.log('My Event 2')
      @test_model.logs.by_user(1).count.should eql(1)
    end
  end
end
