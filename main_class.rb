require_relative "numbers"
require_relative "cirle"
require_relative "matrix"
require_relative "hash_key_founder"
require_relative "string_converter"
require_relative "array_select_by_type"

class MainClass

  def initialize
    str = "<3 ruby"
    Numbers.new(str)

    Circle.new
    Matrix.new
    HashKeyFounder.new
    StringConverter.new
    array = ['a28', [1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby', { key: 'value' }], { key: 'value' }, [[['text', 100_000]]]]
    output = ArraySelectByType.new(array)
    output.values_from_array_using_type(String)
    output.values_from_array_using_type(Integer)
    output.values_from_array_using_type(Hash)
    output.values_from_array_using_type(Array)
  end

end

MainClass.new