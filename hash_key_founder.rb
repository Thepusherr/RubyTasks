class HashKeyFounder
  def initialize(hash, key)
    hash_value_by_key(hash, key)
  end

  private

  def hash_value_by_key(hash, key)
    if hash.instance_of?(Hash)
      hash.each do |k, value|
        k == key ? (p value) : hash_value_by_key(value, key)
      end
    end
  end
end