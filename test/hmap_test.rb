# Copyright © 2011, José Pablo Fernández

require "hmap.rb"
require "test/unit"

class HashTest < Test::Unit::TestCase
  def test_empty
    assert_equal({}, {}.hmap { |a, b| [a, b] })
  end

  def test_raises_when_invalid
    assert_raises RuntimeError do
      {:a => :b}.hmap { |_, _| "hello world" }
    end
  end
end