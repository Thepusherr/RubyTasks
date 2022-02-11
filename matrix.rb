class Matrix
  def initialize(size)
    puts "Enter matrix size:"
    @matrix_size = gets.chomp.to_i
    @array = draw_matrix(convert_to_identity(create_matrix(@matrix_size)))
  end

  private

  def create_matrix(size)
    # if size > 1
    return unless size > 1
    Array.new(size) { Array.new(size, 0) }
    # end
  end

  def convert_to_identity(array)
    if array.instance_of? Array
      array.each.with_index do |row, i|
        row.each.with_index do |_, j|
          if i == j
            array[i][j] = 1
          end
        end
      end
    end
  end

  def draw_matrix(array = [][])
    if array.instance_of? Array
      puts array.map { |x| x.join(" ") }
    end
  end
end
