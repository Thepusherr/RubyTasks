require 'matrix'

class IdentityMatrix
  def initialize(size)
    @matrix_size = size
    @matrix = draw_matrix(create_matrix(@matrix_size))
  end

  private

  def create_matrix(size)
    return unless size > 1
    Matrix.identity(size)
  end

  def draw_matrix(matrix)
    puts matrix.to_a.map{ |x| x.join(" ") }
  end
end