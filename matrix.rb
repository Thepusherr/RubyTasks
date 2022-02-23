class Matrix
  def initialize(size)
    @matrix_size = size
    return unless size > 1
    @array = draw_matrix(convert_to_identity(create_matrix(@matrix_size)))
  end

  private

  def create_matrix(size)
    Array.new(size) { Array.new(size, 0) }
  end
  
  def convert_to_identity(array)
    array.each.with_index.map { |x,i| x.each.with_index.map { |_,j| (i == j) ? array[i][j] = 1 : array[i][j] = 0}}
  end

  def draw_matrix(array = [][])
    puts array.map { |x| x.join(" ") }
  end
end