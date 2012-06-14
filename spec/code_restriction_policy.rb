require_relative "../lib/code_restriction_policy"
require "rspec"

describe CodeRestrictionPolicy do

  it "should allow normal code" do
    normal_code =<<EOCODE
      10.times {|f| yo there!}
EOCODE
    subject.valid?(normal_code).should be_true
  end

  it "should not allow 'system'" do
    subject.valid?("system").should be_false
  end
  it "should not allow backticks" do
    subject.valid?("\`").should be_false
  end
  it "should not allow exec" do
    subject.valid?("exec").should be_false
  end

  it "should not allow fork" do
    subject.valid?("fork").should be_false
  end

end
