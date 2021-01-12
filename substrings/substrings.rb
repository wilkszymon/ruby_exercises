dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word_find, array)
  matches = {} 

  array.each do |word|
    matches[word] = word_find.downcase.scan(/(?=#{word})/).count if word_find.downcase.include?(word)

    #  word_find.downcase.scan(/(?=#{word})/) -> we search our word to array (dictionary), if we find we retrun true
    # .downcase.scan(/(?=#{word})/).count -> we take our string and if we find a word that we count how much we have repeat this word
    #  in our array  

  end
  matches
end

p substrings("below", dictionary)
p substrings("below, down, horn, going to", dictionary)
