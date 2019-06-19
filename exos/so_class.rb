class Point
  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def x
    return @x
  end

  def y
    return @y
  end

  def pos
    return [@x, @y]
  end

  def y=(nb)
    @y = nb
  end

  def x=(nb)
    @x = nb
  end

  def move!(x, y)
    @x = @x + x
    @y = @y + y
  end

  def move_to!(nb, nb2)
    @x = nb
    @y = nb2
  end

  def +(p2)
    return Point.new(@x + p2.x, @y + p2.y)
  end

  def magic?
    return x == 42 && y == 42
  end

  def self.random(count, xmin, ymin, xmax, ymax)
    arr = []
    count.times do |i|
      position_x = rand(xmin...xmax)
      position_y = rand(ymax...ymin)
      new_point = Point.new(position_x, position_y)
      arr.push(new_point)
    end
    return arr
  end

end

point = Point.new()
puts point.magic?

point2 = Point.new(42, 42)
puts point2.magic?
#
# @p1 = Point.new(1, 2)
# @p2 = Point.new(3, 4)
# @p1.x=(42)
# @p1.y=(42)
#
# puts @p1.x
# puts @p1.y
#
# @p1.move!(6, 9)
# puts @p1.pos
# @p1.move_to!(5, 5)
# puts @p1.pos
#
# puts (@p1 +(@p2)).pos
# puts (@p1.+(@p2)).pos
