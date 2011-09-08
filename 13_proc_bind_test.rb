require 'test/unit'
class Proc
  def bind(object)
  end
end

class ProcTests < Test::Unit::TestCase
  class Example
    def initialize
      @i = 1
    end
  end
  def test_bind_returns_method_with_changed_self
    block = Proc.new { self }
    assert_equal self, block.call
    bound_block = block.bind("hello")
    assert_not_equal block, bound_block
    assert_equal "hello", bound_block.call

    assert_equal 2, lambda { @i + 1 }.bind(Example.new).call
  end
end

