def triangle(a, b, c)
  # WR'ITE THIS CODE

  raise TriangleError if [a.to_i, b.to_i, c.to_i].min <= 0
  d = {1 => "equilateral", 2 => "isosceles", 3 => "scalene"}
  result = d[[a, b, c].uniq.length]
  raise TriangleError if !(d.any? {|key, values| values == result})
  p result
end

class TriangleError < StandardError
end

triangle(0,2,2)