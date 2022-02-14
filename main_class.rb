require_relative "numbers"
require_relative "circle"
require_relative "matrix"
require_relative "hash_key_founder"
require_relative "string_converter"
require_relative "array_select_by_type"

class MainClass
  def initialize(task)
    case task
    when 1
      Numbers.new
    when 2
      puts "Enter circle radius:"
      radius = gets.chomp.to_i
      Circle.new(radius)
    when 3
      puts "Enter matrix size:"
      matrix_size = gets.chomp.to_i
      Matrix.new(matrix_size)
    when 4
      hash = {key1: {}, key2: {}, key3: {key4: "str", key5: "str2", key6: {key7: {key8: 1, key9: [2]}}}}
      key = :key9
      HashKeyFounder.new(hash, key)
    when 5
      str = "i love ruby"
      StringConverter.new(str)
    when 6
      array = ["a28", [1, 2, 3, 4, "1"], %w[2 5 10], [111, 222, 333, 444], ["i", "love", "ruby", {key: "value"}], {key: "value"}, [[["text", 100_000]]]]
      output = ArraySelectByType.new(array)
      output.values_from_array_using_type(String)
      output.values_from_array_using_type(Integer)
      output.values_from_array_using_type(Hash)
      output.values_from_array_using_type(Array)
    end
  end
end

task = ""
while task != 0
  puts "Enter number of task(from 1 to 6, 0 - to exit):"
  task = gets.to_i
  MainClass.new(task)
end
