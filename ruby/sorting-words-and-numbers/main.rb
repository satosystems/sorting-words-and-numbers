# frozen_string_literal: true
SEPARATER = ' '

while line = gets.chomp
  classified_words = {
    numerical_digits: [],
    others: [],
  }

  line.split(SEPARATER).each do |word|
    if word.match?(/^\d+$/)
      classified_words[:numerical_digits].append(word)
    else
      classified_words[:others].append(word)
    end
  end

  p classified_words
end
