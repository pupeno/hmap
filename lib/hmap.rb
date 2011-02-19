# Copyright © 2011, José Pablo Fernández

class Hash
  def hmap(*attrs, &block)
    map(*attrs, &block).inject({}) do |new_hash, pair|
      if pair.is_a? Hash
        new_hash.merge(pair)
      elsif pair.is_a? Array
        if pair.length != 2
          raise "When using hmap, when you return arrays, they must have two and only two elements; #{pair} doesn't"
        end
        new_hash[pair[0]] = pair[1]
        new_hash
      else
        raise "When using hmap you need to return arrays or hashes, #{pair} isn't either."
      end
    end
  end
end
