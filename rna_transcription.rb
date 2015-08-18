class Complement
  VERSION = 1
  @complement_hash = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
    rna = ''
    dna.each_char do |char|
      raise ArgumentError unless @complement_hash.key?(char)
      rna += @complement_hash[char]
    end
    rna
  end


  def self.of_rna(rna)
    dna = ''
    rna.each_char do |char|
      raise ArgumentError unless @complement_hash.value?(char)
      dna += @complement_hash.key(char)
    end
    dna
  end
end
