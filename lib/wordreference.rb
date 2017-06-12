class Wordreference
  def self.is_not_valid?(word)
    url = "http://api.wordreference.com/0.8/80143/json/enfr/#{word}"
    response = JSON.parse(open(url).read)
    return response['term0'] == nil
  end

  def self.is_valid?(text)
    text.split(' ') .each do |word|
      if self.is_not_valid?(word)
        return false
      end
    end
    return true
  end
end
