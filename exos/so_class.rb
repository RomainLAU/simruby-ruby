class Point
  def initialize(x = 0,y = 0)
    @x = x
    @y = y
  end

  attr_accessor :x, :y

  def pos
    return [@x, @y]
  end

  def move!(move_x, move_y)
    @x += move_x
    @y += move_y
  end

  def move_to!(move_x, move_y)
    @x = move_x
    @y = move_y
  end

  def +(p2)
    return Point.new(@x + p2.x, @y + p2.y)
  end

  def magic?
    return @x == 42 && @y == 42
  end

  def self.random(count, xmin, ymin, xmax, ymax)
    arr = []
    count.times do
      arr.push(
        Point.new(
          rand(xmin..xmax), rand(ymin..ymax)
        )
      )
    end
    return arr
  end

  protected
  def move_to_magic_position!
    @x = 42
    @y = 42
  end


end

class ColouredPoint

end
