module Foo
end

module Bar
  include Foo
end

class Baz
  include Bar
end

describe "ancestor?" do
  it { Baz.should have_ancestor Bar }
  it { Baz.should have_ancestor Foo }
  it { Bar.should have_ancestor Foo }
end
