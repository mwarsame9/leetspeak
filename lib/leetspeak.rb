class String
  define_method(:leetspeak) do
    input_string = self
    old_letters = input_string.split("")
    if old_letters.at(0).==("s")
      held_letter = old_letters.shift()
    end
    new_letters = []
    old_letters.each() do |letter|
      if "e".include?(letter)
        new_letter = 3
      elsif "o".include?(letter)
        new_letter = 0
      elsif "I".include?(letter)
        new_letter = 1
      elsif "s".include?(letter)
        new_letter = "z"
      else
        new_letter = letter
      end
      new_letters.push(new_letter)
    end
    if held_letter.eql?("s")
      new_letters.unshift("s")
    end
    new_letters.join()
  end
end
