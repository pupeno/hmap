hmap
====

hmap is a simple gem that adds the hmap method to the Hash class. You can use it like this:

    {:a => 1, :b => 2, :c => 3}.hmap { |a,b| {a => b + 1} }

or like this:

    {:a => 1, :b => 2, :c => 3}.hmap { |a,b| [a, b + 1] }

in both cases it'll return:

    {:a => 2, :b => 3, :c => 4}

To use it in your Ruby or Rails project just add:

    gem "hmap"

in your Gemfile.
