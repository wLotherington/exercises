# understand
#   2 methods: translatin of_codon & of_rna
#   codon - receive single 3 letter string & return the protein or STOP
#   rna - receive 3+ string and return array of proteins up to but not including stop codon
#
# i/o
#   codon - input - str
#   codon - output - str
#   rna - input - str
#   rna - output - arr
#
# algorithm
#   of_codon acceps 3 letter str & uses case statement to avoid looping through hash
#   of_rna loops through input string incrementing by 3
#     capture chunks of 3 
#     breaking when end of string is reached or STOP codon is received
#     if not a break, then add then pass to of_codon and add the returns protein string to an arr

# reflection
#   look into #scan
#   look into teke_while
#   could have used shift instead of the loop
#   don't forget that #fetch gives errror instead of nil
#   potentially use each_slice(3)

class InvalidCodonError < StandardError; end

class Translation
  CODON_LENGTH = 3

  def self.of_codon(codon)
    case codon
    when 'AUG'                      then 'Methionine'
    when 'AUG'                      then 'Methionine'
    when 'UUU', 'UUC'               then 'Phenylalanine'
    when 'UUA', 'UUG'               then 'Leucine'
    when 'UCU', 'UCC', 'UCA', 'UCG' then 'Serine'
    when 'UAU', 'UAC'               then 'Tyrosine'
    when 'UGU', 'UGC'               then 'Cysteine'
    when 'UGG'                      then 'Tryptophan'
    when 'UAA', 'UAG', 'UGA'        then 'STOP'
    else raise InvalidCodonError
    end
  end

## Version 2 after refactor
  def self.of_rna(rna)
    codons = rna.scan(/.../).take_while { |codon| of_codon(codon) != 'STOP' }
    proteins = codons.map{ |codon| of_codon(codon) }
    proteins
  end

## Version 1 before refactor
  # def self.of_rna(rna)
  #   proteins = []
  #   idx = 0

  #   while idx <= rna.length - CODON_LENGTH
  #     codon = rna[idx, CODON_LENGTH]
  #     protein = of_codon(codon)

  #     raise InvalidCodonError if protein == 'error'
  #     break if protein == 'STOP'
      
  #     proteins << protein
  #     idx += 3
  #   end

  #   proteins
  # end
end

# strand = 'AUGUUUUGG'
# # expected = %w(Methionine Phenylalanine Tryptophan)
# p Translation.of_rna(strand)

strand = 'UGGUGUUAUUAAUGGUUU'
expected = %w(Tryptophan Cysteine Tyrosine)
p Translation.of_rna(strand)