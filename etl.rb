class ETL
  def self.transform(old)
    newer_hash = {}
    new_hash = old.invert 
    new_hash.map do |x, y|
      a = p x.join.downcase
      newer_hash[a] = y
    end
    newer_hash
  end


end

old = { 1 => ['A'] , 2 => ["B"]}
ETL.transform(old)