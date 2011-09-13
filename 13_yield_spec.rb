class Array
  def each_odd
  end
end

describe Array do
  it do
    a = []
    [1,3].each_odd {|e| a << e}
    a.should == [1,3]
  end
  it do
    a = []
    [1,2,3].each_odd {|e| a << e}
    a.should == [1,3]
  end
end
