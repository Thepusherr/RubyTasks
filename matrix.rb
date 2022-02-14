class Matrix
  def initialize(size)
    @matrix_size = size
    @array = draw_matrix(convert_to_identity(create_matrix(@matrix_size)))
  end

  private

  def create_matrix(size)
    return unless size > 1
    Array.new(size) { Array.new(size, 0) }
  end

  def convert_to_identity(array)
    array.each.with_index do |row, i|
      row.each.with_index do |_, j|
        if i == j; array[i][j] = 1
        end
      end
    end
  end

  def draw_matrix(array = [][])
    puts array.map { |x| x.join(" ") }
  end
end
