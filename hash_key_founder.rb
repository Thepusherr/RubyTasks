class HashKeyFounder

  def initialize
    @hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
    @key = :key9
    hash_value_by_key(@hash,@key)
    #nested_hash_value(hash,:key9)
  end

  private
  def hash_value_by_key(hash,key)
    if hash.instance_of?(Hash)
      hash.each do |k,value|
        if value.instance_of? Hash
          hash_value_by_key(value,key)
        elsif k == key
          p value
        end
      end
    end
  end

  # def nested_hash_value(obj,key)
  #   if obj.respond_to?(:key?) && obj.key?(key)
  #     p obj[key] # get key
  #   elsif obj.respond_to?(:each)
  #     r = nil
  #     obj.find{ |*a| r=nested_hash_value(a.last,key) } #get value if not exit , find - > enumerable method
  #     r
  #   end
  # end

end
