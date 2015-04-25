class ETL
  def self.transform(old)
    @old = old
    newer_hash = {}

    invert_hash

    @a.each do |x, y|
        b = x.downcase
        newer_hash[b] = y
    end
    newer_hash
  end

  def self.invert_hash
    @a = Hash[@old.flat_map { |k,v| v.product([k]) }]
  end

end


p ETL.transform({ 1 => %w(A E I O U) })