class Circle
  def initialize(radius)
    draw_circle(radius)
  end

  private

  def draw_circle(r)
    lines = []
    ratio = 1.0
    a = 0.0
    t2 = ratio / 2.0
    (t2 - 0.1).step(r, ratio) do |h|
      b = Math.sqrt(2.0 * h * r - h**2).round
      u = r - b
      v = [1.0, b - a].max
      w = (r - u - v) * 2.0
      lines << [(m = " " * u), (l = "#" * v), " " * w, l, m].join
      a = b
    end
    out = lines.join("\n")
    puts out
    puts out.reverse
  end
end
