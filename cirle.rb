class Circle

  def initialize()
    puts "Enter cirle radius:"
    @radius = gets.chomp.to_i
    draw_circle(@radius)
  end

  private
  def draw_circle(r)
    lines = []
    # use ratio = 2 for best visualization
    ratio=1.0
    a = 0.0
      t2 = ratio / 2.0
    (t2 - 0.1).step(r, ratio) do |h|
      b = Math.sqrt(2.0 * h * r - h ** 2).round
      u = r - b
      v = [1.0, b - a].max
      w = (r - u - v) * 2.0
      lines << [(m = ' ' * u), (l = '#' * v), ' '  * w, l, m].join
      a = b
    end
    out = lines.join("\n")
    puts out
    puts out.reverse
  end

  def draw_circle2(radius)
    width=radius
    length = radius*1.5
    y=width
    x=-length
    while y>= -width
      while x<=length
        if Math.sqrt(x*x+y*y ) == radius
          print '*'
        else
          print ' '
        end
        x+=1
      end
      y-=2
      puts "\n"
    end
  end

  # def initialize(radius, aspect_ratio = 1.0, char = '#')
  #   @radius = radius.to_i
  #   @aspect_ratio = aspect_ratio.to_f
  #   @char = char
  #
  #   fail "Error: radius must be > 0" if @radius <= 0
  #   fail "Error: aspect ratio must be > 0" if @aspect_ratio <= 0
  #
  #   # a is the semimajor axis of the ellipse and is equal to the given
  #   # radius
  #   @a = @radius
  #
  #   # b is the semiminor axis of the ellipse and is calculated from a
  #   # and the given aspect ratio
  #   @b = (@a / @aspect_ratio).ceil
  #
  #   # calculate the size of the canvas
  #   @w, @h = (@a + 1) * 2, (@b + 1) * 2
  #
  #   # center coordinates correspond to the size of semiaxis.
  #   @cx, @cy = @a, @b
  #
  #   # initialize the canvas with spaces
  #   @canvas = Array.new(@w * @h, ' ')
  #
  #   # draw ellipse on canvas
  #   draw_ellipse(@a, @b)
  # end
  #
  # def to_s
  #   result = ""
  #   (0..@h - 1).each do |line|
  #     result << @canvas[line * @w...line * @w + @w - 1].to_s << '\n'
  #   end
  #   result
  # end

  # def point(x, y)
  #   @canvas[y * @w + x] = @char
  # end

end