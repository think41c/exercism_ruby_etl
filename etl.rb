class ETL
  def self.transform(old)
    newer_hash = {}
    new_hash = old.invert 
    puts old
    puts new_hash
    # Invert the hash, downcase the key. 
    # Most likely use a Hash.map function.
    new_hash.map do |x, y|
      puts x
      puts y
    end

  end


end

# Code snippet to consider - 
# countries = Hash[countries.map {|country, abbr| [country.capitalize, abbr] }]
old = { 1 => ['A'] }
ETL.transform(old)