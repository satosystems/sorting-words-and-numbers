# frozen_string_literal: true

loop do
  sorted = [[], []]
  line = gets
  next if line.nil?

  line.split(' ').each do |word|
    if word.match?(/^\d+$/)
      sorted[1].append(word)
    else
      sorted[0].append(word)
    end
  end
  print(sorted, "\n")
end
