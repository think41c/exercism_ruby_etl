class ETL
  def self.transform(old)
    new_hash = old.invert 
    a = new_hash["A"]
    # Invert the hash, downcase the key. 
    # Most likely use a Hash.map function.
    a
    
  end


end

# Code snippet to consider - 
# countries = Hash[countries.map {|country, abbr| [country.capitalize, abbr] }]
