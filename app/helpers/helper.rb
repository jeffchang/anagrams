def find_anagrams
  @original_word = params[:word]
  letters = @original_word.downcase.split("")
  @anagram_words = []
  Word.where("length(word) = ?", @original_word.length).each do |word|
    temp_word = word.word.downcase.split("")
    if letters - temp_word == [] && temp_word - letters == []
      @anagram_words << word.word
    end
  end
end