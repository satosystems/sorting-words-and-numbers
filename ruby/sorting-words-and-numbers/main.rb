# frozen_string_literal: true

while line = gets
  classified_words = {
    numerical_digits: [],
    others: [],
  }

  line.split(' ').each do |word|
    if word.match?(/^\d+$/)
      classified_words[:numerical_digits].append(word)
    else
      classified_words[:others].append(word)
    end
  end

  p classified_words
end
