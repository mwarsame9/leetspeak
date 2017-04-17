class String
  define_method(:leetspeak) do
    input_string = self
    input_string_split = self.split("")
    new_letters = []
    input_string_split.each() do |letter|
      if "e".include?(letter)
        new_letter = 3
      elsif "o".include?(letter)
        new_letter = 0
      elsif "I".include?(letter)
        new_letter = 1
      else
        new_letter = letter
      end
      new_letters.push(new_letter)
    end
    new_letters.join()
    new_input_string = new_letters.join
    sentence = new_input_string.split(" ")
    sentence_split = []
    sentence.each do |word|
      word_split = word.split("")
      sentence_split.push(word_split)
    end
    sentence_split.each do |word|
      new_sentence = []
      if word.at(0).==("s")
        word.shift()
        new_word = []
        word.each() do |letter|
          new_word.push(letter.gsub(/s/, 'z'))
        end
        new_word.unshift('s')
        new_sentence.push(new_word.join())
      else
        new_word = []
        word.each() do |letter|
          new_word.push(letter.gsub(/s/, 'z'))
        end
        new_sentence.push(new_word.join(""))
      end
      print new_sentence.join(' ')
      print new_sentence
    end
  end
end
