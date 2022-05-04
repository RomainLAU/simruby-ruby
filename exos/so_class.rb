class Point
    attr_accessor :x, :y
    def initialize(x = 0, y = 0)
        @x = x
        @y = y
    end

    def pos
        pos = [@x, @y]
    end

    def move!(param1, param2)
        @x = @x + param1
        @y = @y + param2
    end

    def move_to!(param1, param2)
        @x = param1
        @y = param2
    end

    def + (p2)
        Point.new(@x + p2.pos[0], @y + p2.pos[1])
    end

    def magic?
        true if @x == 42 && @y == 42
    end

    def self.random(count, xmin, ymin, xmax, ymax)
        points = []

        count.times {
            points << Point.new(rand(xmin...xmax), rand(ymin...ymax))
        }

        return points
    end

    def move_to_magic_position!
        @x = 42
        @y = 42
    end

    private :move_to_magic_position!
end

class ColouredPoint < Point
    attr_accessor :color

    def initialize(x = 0, y = 0, color = 'FFFFFF')
        @color = color
        @x = 0
        @y = 0
    end

    def red

    end
end