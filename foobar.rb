class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    ints = a.map { |s| s.to_i }
    plus2 = ints.map { |i| i + 2 }
    even = plus2.keep_if { |i| i.even? }
    unique = even.uniq
    lessthan10 = unique.reject { |i| i >= 10 }
    return lessthan10.inject(0, &:+)
  end

end