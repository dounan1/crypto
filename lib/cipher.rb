class Cipher
  def self.encrypt(text, permutation_level)
    alphabet = ('A'..'Z').to_a
    cipher = text.split("").map do |letter|
      index = alphabet.index(letter)
      if index
        new_index = (index + permutation_level) % 26
        alphabet[new_index]
      else
        letter
      end
    end
    return cipher.join
  end

  def self.decrypt(text)
    possibilities = []
    26.times do |i|
      possibilities << self.encrypt(text, i)
    end
    return possibilities
  end
end
