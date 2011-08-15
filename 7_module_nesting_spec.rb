# What can we do with Module.nesting?

module M
  NESTING = Module.nesting
end

module M
  module Q
    NESTING1 = Module.nesting.inspect
  end
end

module M::Q
  NESTING2 = Module.nesting.inspect
end

describe "nesting" do
  it { M::NESTING.should == [] }
  it { M::Q::NESTING1.should == [] }
  it { M::Q::NESTING2.should == [] }
end
