class ArraySelectByType
  def serch_values_by_type(array,type)
    arr = []
    rec_finder(array.to_a,type,arr)
    p arr
  end

  def rec_finder(array, type, arr)
    array.map { |x| x.instance_of?(type) ? arr.append(x) : (x.instance_of?(Array || Hash) ? rec_finder(x, type,arr): arr ) }; arr
  end
end
