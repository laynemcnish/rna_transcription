class Complement
  VERSION = 1
  COMPLEMENT_HASH = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
    rna = ''
    dna.each_char do |char|
      raise ArgumentError unless COMPLEMENT_HASH.key?(char)
      rna += COMPLEMENT_HASH[char]
    end
    rna
  end


  def self.of_rna(rna)
    dna = ''
    rna.each_char do |char|
      raise ArgumentError unless COMPLEMENT_HASH.value?(char)
      dna += COMPLEMENT_HASH.key(char)
    end
    dna
  end
end
