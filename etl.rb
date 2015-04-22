class ETL
  def self.transform(old)
    newer_hash = {}
    new_hash = old.invert 
    puts old
    puts new_hash
    # Invert the hash, downcase the key. 
    # Most likely use a Hash.map function.
    new_hash.map do |x, y|
      a = p x.join.downcase
      p a
      newer_hash[a] = y
      p newer_hash
      # [x.capitalize, y]
    end

  end


end

# Code snippet to consider - 
# countries = Hash[countries.map {|country, abbr| [country.capitalize, abbr] }]
old = { 1 => ['A'] , 2 => ["B"]}
ETL.transform(old)