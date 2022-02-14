class HashKeyFounder
  def initialize(hash, key)
    @hash = hash
    @key = key
    hash_value_by_key(@hash, @key)
  end

  private

  def hash_value_by_key(hash, key)
    if hash.instance_of?(Hash)
      hash.each do |k, value|
        if value.instance_of? Hash
          hash_value_by_key(value, key)
        elsif k == key
          p value
        end
      end
    end
  end
end
