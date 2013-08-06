get '/' do
  @anagram_words = ["No word yet entered!"]
  erb :index
end

get '/:word' do
  find_anagrams
  erb :index
end

post '/anagrams' do 
  find_anagrams
  erb :index
end