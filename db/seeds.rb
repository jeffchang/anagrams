def populate_dictionary(filename)
  File.open(filename, "r").each_line do |line|
    Word.create({word: line.chomp})
  end
end

populate_dictionary("db/words")
