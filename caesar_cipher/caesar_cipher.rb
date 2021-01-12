def caesar_cipher(word_change, how_much)
  result = ''
  word_change.each_char do |char|
    word = char.ord

    if word >= 65 && word <= 90
      word = ((((word - 65) + how_much) % 26) + 65)
      result += word.chr

    elsif word >= 97 && word <= 122
      word = ((((word - 97) + how_much) % 26) + 97)
      result += word.chr

    else
      result += word.chr
    end
  end
  result
end

p caesar_cipher('Kocham Cie Januszu', 1)
