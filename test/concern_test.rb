require_relative 'test_helper'

concern :Foo do
  BAR = "baz"
end

class BugTest < Minitest::Test

  def test_concern_declares_constant_in_module
    assert_includes Foo.constants, :BAR
  end

  def test_concern_does_not_declare_globals
    refute !!defined? ::BAR
  end
end
