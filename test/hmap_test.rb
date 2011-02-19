# Copyright © 2011, José Pablo Fernández

require "hmap.rb"
require "test/unit"

class HashTest < Test::Unit::TestCase
  def test_empty
    assert_equal({}, {}.hmap { |a, b| [a, b] })
  end

  def test_raises_when_totally_invalid
    assert_raises RuntimeError do
      {:a => :b}.hmap { |a, _| a }
    end
  end

  def test_raises_when_invalid_array
    assert_raises RuntimeError do
      {:a => :b}.hmap { |a, _| [a] }
    end
    assert_raises RuntimeError do
      {:a => :b}.hmap { |a, b| [a, b, b] }
    end
  end

  def test_identity_with_hash
    hash = {:a => :b, :c => :d, :e => :f}
    assert_equal(hash, hash.hmap { |a, b| {a => b} })
  end

  def test_identity_with_array
    hash = {:a => :b, :c => :d, :e => :f}
    assert_equal(hash, hash.hmap { |a, b| [a, b] })
  end
end