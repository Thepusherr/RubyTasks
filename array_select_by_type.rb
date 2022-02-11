class ArraySelectByType

  def initialize (array)
    @array = array
  end

  def values_from_array_using_type(type)
    arr = []
    rec_finder(@array,type,arr)
    p arr
  end

  private

  def rec_finder (array,type,arr)
    if array.instance_of? Array || Hash
      array.map { |x|
        if x.instance_of? type
          arr.append(x)
        else x.instance_of? Array || Hash
        rec_finder(x,type,arr)
        end
      }
    end
  end

end