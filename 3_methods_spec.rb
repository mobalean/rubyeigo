describe "test methods" do
  it { Class.new(TestCase).test_methods.should == []}
  it do
    klass = Class.new(TestCase) { def test_foo; end }
    klass.test_methods.should == [ 'test_foo']
  end
end
