=begin
Write a method that takes a string as an argument, 
and returns an Array that contains every word from 
the string, to which you have appended a space and 
the word length.

You may assume that words in the string are 
separated by exactly one space, and that any 
substring of non-space characters is a word.

PROBLEM:
- input: string
- output: array of strings
- each word and word length are elements of output array
- words are characters sequences separated by one space (including non-alpha characters)
- empty string returns empty array
- 

EXAMPLES:
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("It ain't easy, is it?") == 
["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
p word_lengths("") == []

DATA STRUCTURES:
input: strings
output: array of strings

ALGORITHM:
- convert argued string to array `results`
- iterate over `results`
  - add current element length to current element
- return results

=end

def word_lengths(string)
  results = string.split
  results.map do |element|
    element << " #{element.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") == ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("Supercalifragilisticexpialidocious") == ["Supercalifragilisticexpialidocious 34"]
p word_lengths("") == []