def hierarchy(klass)
end

describe "superclass" do
  it { hierarchy(BasicObject).should == "BasicObject" }
  it { hierarchy(Object).should == "Object -> BasicObject" }
  it { hierarchy(String).should == "String -> Object -> BasicObject" }
end
