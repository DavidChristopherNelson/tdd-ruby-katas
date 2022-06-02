class StringAverage
  @words_to_digits = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }

  def self.calculate(string)
    array_of_words = string.split(' ')
    sum = 0
    array_of_words.each do |word|
      return 'n/a' unless @words_to_digits.keys.include? word
      sum += @words_to_digits[word]
    end
    average = (sum / array_of_words.size).floor()
    @words_to_digits.key(average)
  end
end
