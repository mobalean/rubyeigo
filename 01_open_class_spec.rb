describe String do
  it { "".truncate(1).should == "" }
  it { "abc def".truncate(3).should == "abc..." }
  it { "abc def".truncate(7).should == "abc def" }
end
