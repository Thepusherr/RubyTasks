class Numbers

  def initialize (text)
    @text = text
    output_func
  end

  private
  def output_func
    count = 1
    while count <= 30 do
       (count != 10 && count != 20 && count != 25) ? puts @text : puts "ruby"
      count += 1
    end
  end

end
