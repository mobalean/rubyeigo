class Object
  def instance_values
    Hash[instance_variables.map {|name| [name.to_s[1..-1], instance_variable_get(name)]}]
  end
end

describe Object do
  it { Object.new.instance_values.should == {} }
  it do
    o = Object.new
    o.instance_variable_set(:@a, 1)
    o.instance_values.should == {'a' => 1}
  end
end
