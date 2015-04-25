class ETL
  def self.transform(old)
    @old = old
    invert_hash
    lowercase_keys
  end

  def self.invert_hash
    @a = Hash[@old.flat_map { |k,v| v.product([k]) }]
  end

  def self.lowercase_keys
    newer_hash = {}
    @a.each do |x, y|
      b = x.downcase
      newer_hash[b] = y
    end
    newer_hash
  end
end
