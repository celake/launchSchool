=begin
  Modify the word_sizes method from the previous exercise to exclude 
  non-letters when determining word size. For instance, the length of 
  "it's" is 3, not 4.
=end

def word_sizes(words_string)
  counts = Hash.new(0)
  alphabet = ('a'..'z').to_a
  words_string.split.each do |word| 
    word_size = 0
    word.downcase!
    word.each_char do |char| 
      word_size += 1 if alphabet.include?(char)
    end
    counts[word_size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}