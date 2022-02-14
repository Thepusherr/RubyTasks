class StringConverter
  def initialize(str)
    print_formatted_string(str, method(:camelize))
    print_formatted_string(str, method(:to_underscore))
    print_formatted_string(str, method(:to_css))
  end

  private

  def camelize(string)
    camelize_str = string.split(" ").collect(&:capitalize).join
    puts camelize_str
  end

  def to_underscore(string)
    underscore_str = string.clone.tr! " ", "_"
    puts underscore_str
  end

  def to_css(string)
    css_str = string.clone.tr! " ", "-"
    puts css_str
  end

  def print_formatted_string(str, fun)
    fun.call(str)
  end
end
