class Numbers
  def initialize
    output_func
  end

  private

  def output_func
    p output = (1..30).map { |x| x == 10 || x == 20 || x == 25 ? (x = "<3 ruby") : (x = "ruby") }
  end
end
